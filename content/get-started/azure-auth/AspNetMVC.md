# Call Microsoft Graph in an ASP.NET MVC app

In this article we look at the minimum tasks required to connect your application to Office 365 and call the Microsoft Graph API. This topic won't create an app from scratch. We use code from [Office 365 ASP.NET MVC Connect sample using Microsoft Graph](https://github.com/microsoftgraph/aspnet-connect-rest-sample) to explain the main concepts that you have to implement in your app.

The following is a screenshot of the send mail page.

![Office 365 ASP.NET MVC sample screenshot](./images/O365AspNetMVCSendMailPageScreenshot.png)

## Overview

To call the Microsoft Graph API, you have to complete the following tasks.

1. Register the application in Azure Active Directory
2. Authenticate a user and get an access token by calling methods on the Azure AD Authentication Library for .NET. (ADAL)
3. Use ADAL to get an access token
4. Use the access token in a request to the Microsoft Graph API
5. Disconnect session

<!--<a name="register"></a>-->
## Register the application in Azure Active Directory

Before you can start working with Office 365, you need to register your application and set permissions to use Microsoft Graph services.
With just a few clicks, you can register your application to access a user's work or school account using the [Application Registration Tool](https://dev.office.com/app-registration). To manage it you will need to go to the [Microsoft Azure Management portal](https://manage.windowsazure.com)

See [Register your brower-based web app with the Azure Management Portal](https://msdn.microsoft.com/office/office365/HowTo/add-common-consent-manually#bk_RegisterWebApp) for alternative instructions, and keep in mind the following details.

* Make sure to specify http://localhost:55065/ as the **Sign-on URL**.
* After you register the application, [configure the **Delegated permissions**](https://github.com/microsoftgraph/aspnet-connect-rest-sample/wiki/Grant-permissions-to-the-Connect-application-in-Azure) that your Angular app requires. The Connect sample requires the **Send mail as signed-in user** permission.

Take note of the following values in the **Configure** page of your Azure application because you need these values to configure in your app.

* Client ID (unique to your application)
* Key (also known as client secret)
* A reply URL (also known as redirect URL). For this sample it's http://localhost:55065/.

  > Note:  The reply URL value is auto-populated with the sign-on URL value that you specify when you register the application.

<!--<a name="#auth"></a>-->
## Authentication in the Connect sample

The Azure AD Authentication Library (ADAL) for .NET enables client application developers to authenticate users, and then obtain access tokens to make API calls.  You can include this library in your ASP.NET MVC project via **Manage NuGet packages** in Visual Studio.

The following is a screenshot of the home page.

![Office 365 ASP.NET MVC sample screenshot](./images/O365AspNetMVCHomePageScreenshot.png)

The authentication flow can be broken down to two basic steps:

1. Request an authorization code
2. Use authorization code to request an access token.

>  **Note**: You will also get a refresh token along with the access token. You can use the refresh token to acquire a new access token when the current access token expires.

The connect sample uses the Azure app registration values and a user's ID to authenticate. The ADAL authentication flow needs the client ID, key and reply URL (also known as redirect URL) you get in the Azure registration process.

To request for an authorization code, first redirect the app to the Azure AD authorization request URL as shown below (see HomeController.cs file).


```c#
        public ActionResult Login()
        {
            if (string.IsNullOrEmpty(Settings.ClientId) || string.IsNullOrEmpty(Settings.ClientSecret))
            {
                ViewBag.Message = "Please set your client ID and client secret in the Web.config file";
                return View();
            }


            var authContext = new AuthenticationContext(Settings.AzureADAuthority);

            // Generate the parameterized URL for Azure login.
            Uri authUri = authContext.GetAuthorizationRequestURL(
                Settings.O365UnifiedAPIResource,
                Settings.ClientId,
                loginRedirectUri,
                UserIdentifier.AnyUser,
                null);

            // Redirect the browser to the login page, then come back to the Authorize method below.
            return Redirect(authUri.ToString());
        }

```
When this **Login** method is called, the app will redirect the user to a sign in page. This will take the app to the login page. Once the user credentials are successfully authenticated, Azure redirects the app to  the redirect URL mentioned in the code as denoted by *loginRedirectUri*. This redirect URL is a URL to another action in the ASP.NET MVC app as shown.

```c#

 Uri loginRedirectUri => new Uri(Url.Action(nameof(Authorize), "Home", null, Request.Url.Scheme));

```
The URL will also contain the authorization code mentioned in step 1 and 2 above.  This will get the authorization code from the request parameters. Using the authorizationn code, the app will make a call to Azure AD to get the access token. Once we get the access token, we store it in the session so that we can use it for multiple requests.

The Authorize action mentioned in the redirect URL action looks like this.

```c#
        public async Task<ActionResult> Authorize()
        {
            var authContext = new AuthenticationContext(Settings.AzureADAuthority);


            // Get the token.
            var authResult = await authContext.AcquireTokenByAuthorizationCodeAsync(
                Request.Params["code"],                                         // the auth 'code' parameter from the Azure redirect.
                loginRedirectUri,                                               // same redirectUri as used before in Login method.
                new ClientCredential(Settings.ClientId, Settings.ClientSecret), // use the client ID and secret to establish app identity.
                Settings.O365UnifiedAPIResource);

            // Save the token in the session.
            Session[SessionKeys.Login.AccessToken] = authResult.AccessToken;

            // Get info about the current logged in user.
            Session[SessionKeys.Login.UserInfo] = await UnifiedApiHelper.GetUserInfoAsync(authResult.AccessToken);

            return RedirectToAction(nameof(Index), "Message");

        }

```
>  **Note**:  For more information about authorization flow, see [Authorization Code Grant Flow] (https://msdn.microsoft.com/en-US/library/azure/dn645542.aspx)

<!--<a name="request"></a>-->
## Use the access token in a request to the Microsoft Graph API

After the user signs-in, the Connect sample shows the user an activity for sending a mail message.  With an access token, your app can make authenticated requests to the Microsoft Graph API.

For example the UnifiedApiHelper.cs file contains the code that:

1)  Get information about the current login user.  The ``GetUserInfoAsync`` method takes a single argument (access token value) to make a call to **https://graph.microsoft.com/v1.0/me** to get information about the current login user.

 ```c#

        public static async Task<UserInfo> GetUserInfoAsync(string accessToken)
        {
            UserInfo myInfo = new UserInfo();

            using (var client = new HttpClient())
            {
                using (var request = new HttpRequestMessage(HttpMethod.Get, Settings.GetMeUrl))
                {
                    request.Headers.Accept.Add(Json);
                    request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);

                    using (var response = await client.SendAsync(request))
                    {
                        if (response.StatusCode == HttpStatusCode.OK)
                        {
                            var json = JObject.Parse(await response.Content.ReadAsStringAsync());
                            myInfo.Name = json?["displayName"]?.ToString();
                            myInfo.Address = json?["mail"]?.ToString().Trim().Replace(" ", string.Empty);

                        }
                    }
                }
            }

            return myInfo;
        }

```



2)  Construct and send the message that the logged in user wants to send via email. The ``SendMessageAsync`` method constructs and sends a POST request to the **https://graph.microsoft.com/v1.0/me/microsoft.graph.sendmail** resource URL, using the access token value as one of the arguments.


```c#

        public static async Task<SendMessageResponse> SendMessageAsync(string accessToken, SendMessageRequest sendMessageRequest)
        {
            var sendMessageResponse = new SendMessageResponse { Status = SendMessageStatusEnum.NotSent };

            using (var client = new HttpClient())
            {
                using (var request = new HttpRequestMessage(HttpMethod.Post, Settings.SendMessageUrl))
                {
                    request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
                    request.Content = new StringContent(JsonConvert.SerializeObject(sendMessageRequest), Encoding.UTF8, "application/json");
                    using (HttpResponseMessage response = await client.SendAsync(request))
                    {
                        if (response.IsSuccessStatusCode)
                        {
                            sendMessageResponse.Status = SendMessageStatusEnum.Sent;
                            sendMessageResponse.StatusMessage = null;
                        }
                        else
                        {
                            sendMessageResponse.Status = SendMessageStatusEnum.Fail;
                            sendMessageResponse.StatusMessage = response.ReasonPhrase;
                        }
                    }
                }
            }

            return sendMessageResponse;
        }

```


The  ``MessageController.cs `` file contains code that manages email messages. For example, the **Send Mail** button.The  ``SendMessageSubmit `` method sends the message when the users clicks the **Send Mail** button.


```c#

        public async Task<ActionResult> SendMessageSubmit(UserInfo userInfo)
        {
            // After Index method renders the View, user clicks Send Mail, which comes in here.
            EnsureUser(ref userInfo);

            // Send email using O365 unified API.
            var sendMessageResult = await UnifiedApiHelper.SendMessageAsync(
                (string)Session[SessionKeys.Login.AccessToken],
                GenerateEmail(userInfo));

            // Reuse the Index view for messages (sent, not sent, fail) .
            // Redirect to tell the browser to call the app back via the Index method.
            return RedirectToAction(nameof(Index), new RouteValueDictionary(new Dictionary<string,object>{
                { "Status", sendMessageResult.Status },
                { "StatusMessage", sendMessageResult.StatusMessage },
                { "Address", userInfo.Address },
            }));
        }

```


The ``CreateEmailObject`` method creates the email object in the required request format/data contract that the POST body requires:


  ```c#

        private SendMessageRequest CreateEmailObject(UserInfo to, string subject, string body)
        {
            return new SendMessageRequest
            {
                Message = new Message
                {
                    Subject = subject,
                    Body = new MessageBody
                    {
                        ContentType = "Html",
                        Content = body
                    },
                    ToRecipients = new List<Recipient>
                    {
                        new Recipient
                        {
                            EmailAddress = new UserInfo
                            {
                                 Name =  to.Name,
                                 Address = to.Address
                            }
                        }
                    }
                },
                SaveToSentItems = true
            };

```

Another task is to construct a valid JSON message string and send it to the ``https://graph.microsoft.com/v1.0/me/microsoft.graph.sendmail`` endpoint using an HTTP POST request. Since the email body is to be sent as an HTML document, the request sets the ``ContentType`` value of the email message to HTML, and encodes the content as JSON for the HTTP POST request. The UnifiedApiMessageModels.cs file contains the data or schema contracts between this app and the Office 365 unified API server.



```c#


    public class SendMessageResponse
    {
        public SendMessageStatusEnum Status { get; set; }
        public string StatusMessage { get; set; }
    }

    public class SendMessageRequest
    {
        public Message Message { get; set; }

        public bool SaveToSentItems { get; set; }
    }

    public class Message
    {
        public string Subject { get; set; }
        public MessageBody Body { get; set; }
        public List<Recipient> ToRecipients { get; set; }
    }
    public class Recipient
    {
        public UserInfo EmailAddress { get; set; }
    }

    public class MessageBody
    {
        public string ContentType { get; set; }
        public string Content { get; set; }
    }

    public class UserInfo
    {
        public string Name { get; set; }
        public string Address { get; set; }
    }

}

```
<!--<a name="logout"></a>-->
## Disconnect the session

When the user clicks **Disconnect** in the send mail page, the user will be logout of the session. The code does this by
* Clearing the local session
* Redirect the browser to the logout endpoint (so Azure can clear its own cookies)

The **Logout** method (see HomeController.cs file) shows how this is done.


```c#
        public ActionResult Logout()
        {
            Session.Clear();
            return Redirect(Settings.LogoutAuthority + logoutRedirectUri.ToString());
        }

```

##Next steps
The Microsoft Graph API is a very powerful, unifiying API that can be used to interact with all kinds of Microsoft data. Check out the API reference to explore what else you can accomplish with the Microsoft Graph API.
Explore our other ASP.NET samples on [GitHub](http://aka.ms/aspnetgraphsamples).


