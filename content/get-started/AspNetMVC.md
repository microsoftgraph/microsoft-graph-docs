# Get started with the Microsoft Graph in an ASP.NET 4.6 MVC app

This article describes the tasks required to get an access token from the v2 authentication endpoint and call the Microsoft Graph. It walks you through building the [Microsoft Graph Connect Sample for ASP.NET 4.6](https://github.com/microsoftgraph/aspnet-connect-sample) and explains the main concepts that you implement to use the Microsoft Graph. The article also describes how to access the Microsoft Graph by using either the [Microsoft Graph .NET Client Library](https://github.com/microsoftgraph/msgraph-sdk-dotnet) or raw REST calls.

This is the app you'll create. 

![The web app with "Get email address" and "Send email" buttons](images/aspnet-connect-sample.png "The web app with 'Get email address' and 'Send email' buttons")

The Azure AD [v2.0 endpoint](https://azure.microsoft.com/en-us/documentation/articles/active-directory-appmodel-v2-overview) lets users sign in with a Microsoft account (MSA) or a work or school account. The app uses the [ASP.Net OpenID Connect OWIN middleware](https://www.nuget.org/packages/Microsoft.Owin.Security.OpenIdConnect/) and the [Microsoft Authentication Library (MSAL) for .NET](https://www.nuget.org/packages/Microsoft.Identity.Client) for sign in and token management.

>MSAL is currently in prerelease, and as such should not be used in production code. It is used here for illustrative purposes only. 

**Don't feel like building an app?** Get up and running fast using the [Quick Start](https://graph.microsoft.io/en-us/getting-started).


## Prerequisites

To follow along with this walkthrough, you'll need: 

- A [Microsoft account](https://www.outlook.com/) or an [Office 365 for business account](https://msdn.microsoft.com/en-us/office/office365/howto/setup-development-environment#bk_Office365Account)
- Visual Studio 2015 
- The [Microsoft Graph Connect Sample for ASP.NET 4.6](https://github.com/microsoftgraph/aspnet-connect-sample). You'll use the **starter-project** folder in the sample files for this walkthrough.


## Register the application

In this step, you'll register an app on the Microsoft App Registration Portal. This generates the app ID and password that you'll use to configure the app in Visual Studio.

1. Sign into the [Microsoft App Registration Portal](https://apps.dev.microsoft.com/) using either your personal or work or school account.

2. Choose **Add an app**.

3. Enter a name for the app, and choose **Create application**. 
	
   The registration page displays, listing the properties of your app.

4. Copy the application ID. This is the unique identifier for your app. 

5. Under **Application Secrets**, choose **Generate New Password**. Copy the password from the **New password generated** dialog.

   You'll use the application ID and password to configure the app. 

6. Under **Platforms**, choose **Add platform** > **Web**.

7. Make sure the **Allow Implicit Flow** check box is selected, and enter *http://localhost:55065/* as the Redirect URI. 

   The **Allow Implicit Flow** option enables the OpenID Connect hybrid flow. During authentication, this enables the app to receive both sign-in info (the **id_token**) and artifacts (in this case, an authorization code) that the app uses to obtain an access token.

8. Choose **Save**.

### Configure the project

1. Open the solution file for the starter project in Visual Studio.

2. Open the project's Web.config file.

3. Locate the app configuration keys in the **appSettings** element. Replace the ENTER_YOUR_CLIENT_ID and ENTER_YOUR_SECRET placeholder values with the values you just copied.

The redirect URI is the URL of the project that you registered. The requested [permission scopes](https://graph.microsoft.io/en-us/docs/authorization/permission_scopes) allow the app to get user profile information and send an email.


## Authenticate the user and get an access token

In this step, you'll add sign-in and token management code. But first, let's take a closer look at the auth flow.

This app uses the authorization code grant flow with a delegated user identity. For a web application, the flow requires the application ID, password, and redirect URI from the registered app. 

The auth flow can be broken down into these basic steps:

1. Redirect the user for authentication and consent
2. Get an authorization code
3. Redeem the authorization code for an access token
4. Use the refresh token to get a new access token when the access token expires

The app uses the [ASP.Net OpenID Connect OWIN middleware](https://www.nuget.org/packages/Microsoft.Owin.Security.OpenIdConnect/) and the [Microsoft Authentication Library (MSAL) for .NET](https://www.nuget.org/packages/Microsoft.Identity.Client) for sign in and token management. These handle most auth tasks for you.
    
The starter project already declares the following middleware and MSAL NuGet dependencies:

  - Microsoft.Owin.Security.OpenIdConnect
  - Microsoft.Owin.Security.Cookies
  - Microsoft.Owin.Host.SystemWeb
  - Microsoft.Identity.Client -Pre

Now back to building the app.

1. In the **App_Start** folder, open Startup.Auth.cs. 

1. Replace the **ConfigureAuth** method with the following code. This sets up the coordinates for communicating with Azure AD and sets up the Cookie Authentication used by the OpenID Connect middleware.


  ```c#
    public void ConfigureAuth(IAppBuilder app)
    {
        app.SetDefaultSignInAsAuthenticationType(CookieAuthenticationDefaults.AuthenticationType);

        app.UseCookieAuthentication(new CookieAuthenticationOptions());

        app.UseOpenIdConnectAuthentication(
            new OpenIdConnectAuthenticationOptions
            {

                // The `Authority` represents the Microsoft v2.0 authentication and authorization service.
                // The `Scope` describes the permissions that your app will need. See https://azure.microsoft.com/documentation/articles/active-directory-v2-scopes/                    
                ClientId = appId,
                Authority = "https://login.microsoftonline.com/common/v2.0",
                PostLogoutRedirectUri = redirectUri,
                RedirectUri = redirectUri,
                Scope = "openid email profile offline_access " + graphScopes,
                TokenValidationParameters = new TokenValidationParameters
                {
                    ValidateIssuer = false,
                    // In a real application you would use IssuerValidator for additional checks, 
                    // like making sure the user's organization has signed up for your app.
                    //     IssuerValidator = (issuer, token, tvp) =>
                    //     {
                    //         if (MyCustomTenantValidation(issuer)) 
                    //             return issuer;
                    //         else
                    //             throw new SecurityTokenInvalidIssuerException("Invalid issuer");
                    //     },
                },
                Notifications = new OpenIdConnectAuthenticationNotifications
                {
                    AuthorizationCodeReceived = async (context) =>
                    {
                        var code = context.Code;
                        string signedInUserID = context.AuthenticationTicket.Identity.FindFirst(ClaimTypes.NameIdentifier).Value;
                        ConfidentialClientApplication cca = new ConfidentialClientApplication(
                            appId, 
                            redirectUri,
                            new ClientCredential(appSecret),
                            new SessionTokenCache(signedInUserID, context.OwinContext.Environment["System.Web.HttpContextBase"] as HttpContextBase));
                        string[] scopes = graphScopes.Split(new char[] { ' ' });

                        AuthenticationResult result = await cca.AcquireTokenByAuthorizationCodeAsync(scopes, code);
                    },
                    AuthenticationFailed = (context) =>
                    {
                        context.HandleResponse();
                        context.Response.Redirect("/Error?message=" + context.Exception.Message);
                        return Task.FromResult(0);
                    }
                }
            });
    }
  ```
  
  The OWIN Startup class (defined in Startup.cs) invokes the **ConfigureAuth** method when the app starts, which in turn calls **app.UseOpenIdConnectAuthentication** to initialize the middleware for sign in and the initial token request. The app requests the following permission scopes:

  - **openid**, **email**, **profile** for sign in
  - **offline\_access** (required to obtain refresh tokens), **User.Read**, **Mail.Send** for token acquisition
  
  The MSAL **ConfidentialClientApplication** object represents the app and handles token management tasks. It's initialized with **SessionTokenCache** (the sample token cache implementation defined in TokenStorage/SessionTokenCache.cs) where it stores token information. The cache saves tokens in the current HTTP session based on user ID, but a production application will likely use more persistent storage.

Now you'll add code to the sample auth provider, which is designed to be easily replaced with your own custom auth provider. The interface and provider class have already been added to the project.

1. In the **Helpers** folder, open SampleAuthProvider.cs.

1. Replace the **GetUserAccessTokenAsync** method with the following implementation that uses MSAL to get an access token.

  ```c#
    // Get an access token. First tries to get the token from the token cache.
    public async Task<string> GetUserAccessTokenAsync()
    {
        string signedInUserID = ClaimsPrincipal.Current.FindFirst(ClaimTypes.NameIdentifier).Value;
        tokenCache = new SessionTokenCache(
            signedInUserID, 
            HttpContext.Current.GetOwinContext().Environment["System.Web.HttpContextBase"] as HttpContextBase);
        //var cachedItems = tokenCache.ReadItems(appId); // see what's in the cache

        ConfidentialClientApplication cca = new ConfidentialClientApplication(
            appId, 
            redirectUri,
            new ClientCredential(appSecret), 
            tokenCache);

        try
        {
            AuthenticationResult result = await cca.AcquireTokenSilentAsync(scopes.Split(new char[] { ' ' }));
            return result.Token;
        }

        // Unable to retrieve the access token silently.
        catch (MsalSilentTokenAcquisitionException)
        {
            HttpContext.Current.Request.GetOwinContext().Authentication.Challenge(
                new AuthenticationProperties() { RedirectUri = "/" },
                OpenIdConnectAuthenticationDefaults.AuthenticationType);

            throw new Exception(Resource.Error_AuthChallengeNeeded);
        }
    }
  ```

  MSAL checks the cache for a matching access token that isn't expired or about to expire. If it can't find a valid one, it uses the refresh token (if a valid one exists) to get a new access token. If it's unable to obtain a new access token silently, MSAL throws an **MsalSilentTokenAcquisitionException** to indicate that a user prompt is needed. 

Next you'll add code to handle signing and signing out from the UI.

1. In the **Controllers** folder, open AccountController.cs.  

1. Add the following methods to the **AccountController** class. The **SignIn** method signals the middleware to send an authorization request to Azure AD.

  ```c#
    public void SignIn()
    {
        if (!Request.IsAuthenticated)
        {
            // Signal OWIN to send an authorization request to Azure.
            HttpContext.GetOwinContext().Authentication.Challenge(
            new AuthenticationProperties { RedirectUri = "/" },
            OpenIdConnectAuthenticationDefaults.AuthenticationType);
        }
    }

    // Here we just clear the token cache, sign out the GraphServiceClient, and end the session with the web app.  
    public void SignOut()
    {
        if (Request.IsAuthenticated)
        {
            // Get the user's token cache and clear it.
            string userObjectId = ClaimsPrincipal.Current.FindFirst(ClaimTypes.NameIdentifier).Value;

            SessionTokenCache tokenCache = new SessionTokenCache(userObjectId, HttpContext);
            tokenCache.Clear(userObjectId);
        }

        //SDKHelper.SignOutClient();

        // Send an OpenID Connect sign-out request. 
        HttpContext.GetOwinContext().Authentication.SignOut(
        CookieAuthenticationDefaults.AuthenticationType);
        Response.Redirect("/");
    }
  ```

Now you're ready to add code to call the Microsoft Graph. 

## Call the Microsoft Graph

If you're using the Microsoft Graph library, read on. If you're using REST, jump to the [Using the REST API](#using-the-rest-api) section.

### Using the library
In this step, you'll focus on the **SDKHelper**, **GraphService**, and **HomeController** classes. 

 - **SDKHelper** intializes an instance of the **GraphServiceClient** from the library before each call to the Microsoft Graph. This is when the access token is added to the request. 
 - **GraphService** builds and sends requests to the Microsoft Graph using the library, and processes the responses.
 - **HomeController** contains actions that initiate the calls to the library in response to UI events.

The starter project already declares a dependency for the Microsoft Graph .NET Client Library NuGet package:  *Microsoft.Graph*.

1. Right-click the **Helpers** folder and choose **Add** > **Class**. 

1. Name the new class *SDKHelper* and choose **Add**.

1. Replace the contents with the following code.

  ```c#
    using System.Net.Http.Headers;
    using Microsoft.Graph;

    namespace Microsoft_Graph_SDK_ASPNET_Connect.Helpers
    {
        public class SDKHelper
        {   
            private static GraphServiceClient graphClient = null;

            // Get an authenticated Microsoft Graph Service client.
            public static GraphServiceClient GetAuthenticatedClient()
            {
                GraphServiceClient graphClient = new GraphServiceClient(
                    new DelegateAuthenticationProvider(
                        async (requestMessage) =>
                        {
                            string accessToken = await SampleAuthProvider.Instance.GetUserAccessTokenAsync();

                            // Append the access token to the request.
                            requestMessage.Headers.Authorization = new AuthenticationHeaderValue("bearer", accessToken);
                        }));
                return graphClient;
            }

            public static void SignOutClient()
            {
                graphClient = null;
            }
        }
    }
  ```

  Note the call to **SampleAuthProvider** to get the token when the client is initialized.

1. In the **Models** folder, open GraphService.cs. The service uses the library to interact with the Microsoft Graph.

1. Add the following **using** statement.

  ```c#
using Microsoft.Graph;
  ```

1. Replace *// GetMyEmailAddress* with the following method. This gets the current user's email address. 

  ```c#
    // Get the current user's email address from their profile.
    public async Task<string> GetMyEmailAddress(GraphServiceClient graphClient)
    {

        // Get the current user. 
        // The app only needs the user's email address, so select the mail and userPrincipalName properties.
        // If the mail property isn't defined, userPrincipalName should map to the email for all account types. 
        User me = await graphClient.Me.Request().Select("mail,userPrincipalName").GetAsync();
        return me.Mail ?? me.UserPrincipalName;
    }
  ```

  Note the **Select** segment, which requests only the **mail** and **userPrinicipalName** to be returned. You can use **Select** and **Filter** to reduce the size of the response data payload.

1. Replace *// SendEmail* with the following methods to build and send the email.

  ```c#
    // Send an email message from the current user.
    public async Task SendEmail(GraphServiceClient graphClient, Message message)
    {
        await graphClient.Me.SendMail(message, true).Request().PostAsync();
    }

    // Create the email message.
    public Message BuildEmailMessage(string recipients, string subject)
    {

        // Prepare the recipient list.
        string[] splitter = { ";" };
        string[] splitRecipientsString = recipients.Split(splitter, StringSplitOptions.RemoveEmptyEntries);
        List<Recipient> recipientList = new List<Recipient>();
        foreach (string recipient in splitRecipientsString)
        {
            recipientList.Add(new Recipient
            {
                EmailAddress = new EmailAddress
                {
                    Address = recipient.Trim()
                }
            });
        }

        // Build the email message.
        Message email = new Message
        {
            Body = new ItemBody
            {
                Content = Resource.Graph_SendMail_Body_Content,
                ContentType = BodyType.Html,
            },
            Subject = subject,
            ToRecipients = recipientList
        };
        return email;
    }
  ```

1. In the **Controllers** folder, open HomeController.cs.

1. Add the following **using** statement.

  ```c#
using Microsoft.Graph;
  ```
  
1. Replace *// Controller actions* with the following actions.

  ```c#
    [Authorize]
    // Get the current user's email address from their profile.
    public async Task<ActionResult> GetMyEmailAddress()
    {
        try
        {

            // Initialize the GraphServiceClient.
            GraphServiceClient graphClient = SDKHelper.GetAuthenticatedClient();

            // Get the current user's email address. 
            ViewBag.Email = await graphService.GetMyEmailAddress(graphClient);
            return View("Graph");
        }
        catch (ServiceException se)
        {
            if (se.Error.Message == Resource.Error_AuthChallengeNeeded) return new EmptyResult();
            return RedirectToAction("Index", "Error", new { message = Resource.Error_Message + Request.RawUrl + ": " + se.Error.Message });
        }
    }

    [Authorize]
    // Send mail on behalf of the current user.
    public async Task<ActionResult> SendEmail()
    {
        if (string.IsNullOrEmpty(Request.Form["email-address"]))
        {
            ViewBag.Message = Resource.Graph_SendMail_Message_GetEmailFirst;
            return View("Graph");
        }

        // Build the email message.
        Message message = graphService.BuildEmailMessage(Request.Form["recipients"], Request.Form["subject"]);
        try
        {

            // Initialize the GraphServiceClient.
            GraphServiceClient graphClient = SDKHelper.GetAuthenticatedClient();

            // Send the email.
            await graphService.SendEmail(graphClient, message);

            // Reset the current user's email address and the status to display when the page reloads.
            ViewBag.Email = Request.Form["email-address"];
            ViewBag.Message = Resource.Graph_SendMail_Success_Result;
            return View("Graph");
        }
        catch (ServiceException se)
        {
            if (se.Error.Message == Resource.Error_AuthChallengeNeeded) return new EmptyResult();
            return RedirectToAction("Index", "Error", new { message = Resource.Error_Message + Request.RawUrl + ": " + se.Error.Message });
        }
    }
  ```

Next you'll change the exception that the auth provider throws when a user prompt is needed.

1. In the **Helpers** folder, open SampleAuthProvider.cs.

1. Add the following **using** statement.

  ```c#
using Microsoft.Graph;
  ```
  
1. In the **GetUserAccessTokenAsync** method's **catch** block, change the thrown exception as follows:

  ```c#
    throw new ServiceException(
        new Error
        {
            Code = GraphErrorCode.AuthenticationFailure.ToString(),
            Message = Resource.Error_AuthChallengeNeeded,
        });
  ```

Lastly, you'll add a call to sign out the client. 

1. In the **Controllers** folder, open AccountController.cs. 

1. Uncomment the following line:

  ```c#
SDKHelper.SignOutClient();
  ```

Now you're ready to [run the app](#run-the-app).

### Using the REST API
In this step, you'll work with the **GraphService**, **GraphResources**, and **HomeController** classes. 

 - **GraphService** builds and sends HTTP requests to the Microsoft Graph and processes the responses. 
 - **GraphResources** represents data that the app sends to and receives from the Microsoft Graph. 
 - **HomeController** contains actions that initiate the calls to the Microsoft Graph in response to UI events.

1. In the **Models** folder, open GraphService.cs.

1. Add the following **using** statements.

  ```c#
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
  ```

1. Replace *// GetMyEmailAddress* with the following method. This gets the current user's email address. 

  ```c#
    // Get the current user's email address from their profile.
    public async Task<string> GetMyEmailAddress(string accessToken)
    {

        // Get the current user. 
        // The app only needs the user's email address, so select the mail and userPrincipalName properties.
        // If the mail property isn't defined, userPrincipalName should map to the email for all account types. 
        string endpoint = "https://graph.microsoft.com/v1.0/me";
        string queryParameter = "?$select=mail,userPrincipalName";
        UserInfo me = new UserInfo();

        using (var client = new HttpClient())
        {
            using (var request = new HttpRequestMessage(HttpMethod.Get, endpoint + queryParameter))
            {
                request.Headers.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
                request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
                using (HttpResponseMessage response = await client.SendAsync(request))
                {
                    if (response.StatusCode == HttpStatusCode.OK)
                    {
                        var json = JObject.Parse(await response.Content.ReadAsStringAsync());
                        me.Address = !string.IsNullOrEmpty(json.GetValue("mail").ToString())?json.GetValue("mail").ToString():json.GetValue("userPrincipalName").ToString();
                    }
                    return me.Address?.Trim();
                }
            }
        }
    }
  ```

1. Replace *// SendEmail* with the following methods to build and send the email.

  ```c#
    // Send an email message from the current user.
    public async Task<string> SendEmail(string accessToken, MessageRequest email)
    {
        string endpoint = "https://graph.microsoft.com/v1.0/me/sendMail";
        using (var client = new HttpClient())
        {
            using (var request = new HttpRequestMessage(HttpMethod.Post, endpoint))
            {
                request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", accessToken);
                request.Content = new StringContent(JsonConvert.SerializeObject(email), Encoding.UTF8, "application/json");
                using (HttpResponseMessage response = await client.SendAsync(request))
                {
                    if (response.IsSuccessStatusCode)
                    {
                        return Resource.Graph_SendMail_Success_Result;
                    }
                    return response.ReasonPhrase;
                }
            }
        }
    }

    // Create the email message.
    public MessageRequest BuildEmailMessage(string recipients, string subject)
    {

        // Prepare the recipient list.
        string[] splitter = { ";" };
        string[] splitRecipientsString = recipients.Split(splitter, StringSplitOptions.RemoveEmptyEntries);
        List<Recipient> recipientList = new List<Recipient>();
        foreach (string recipient in splitRecipientsString)
        {
            recipientList.Add(new Recipient
            {
                EmailAddress = new UserInfo
                {
                    Address = recipient.Trim()
                }
            });
        }

        // Build the email message.
        Message message = new Message
        {
            Body = new ItemBody
            {
                Content = Resource.Graph_SendMail_Body_Content,
                ContentType = "HTML"
            },
            Subject = subject,
            ToRecipients = recipientList
        };

        return new MessageRequest
        {
            Message = message,
            SaveToSentItems = true
        };
    }
  ```

1. Right-click the **Models** folder and choose **Add** > **Class**.

1. Name the class *GraphResources* and choose **OK**.

1. Replace the contents with the following code.

  ```c#  
    using System;
    using System.Collections.Generic;

    namespace Microsoft_Graph_SDK_ASPNET_Connect.Models
    {
        public class UserInfo
        {
            public string Address { get; set; }
        }

        public class Message
        {
            public string Subject { get; set; }
            public ItemBody Body { get; set; }
            public List<Recipient> ToRecipients { get; set; }
        }
        public class Recipient
        {
            public UserInfo EmailAddress { get; set; }
        }

        public class ItemBody
        {
            public string ContentType { get; set; }
            public string Content { get; set; }
        }

        public class MessageRequest
        {
            public Message Message { get; set; }
            public bool SaveToSentItems { get; set; }
        }
    }
  ```

1. In the **Controllers** folder, open HomeController.cs.
  
1. Replace *// Controller actions* with the following actions.

  ```c#
    [Authorize]
    // Get the current user's email address from their profile.
    public async Task<ActionResult> GetMyEmailAddress()
    {
        try
        {

            // Get an access token.
            string accessToken = await SampleAuthProvider.Instance.GetUserAccessTokenAsync();

            // Get the current user's email address. 
            ViewBag.Email = await graphService.GetMyEmailAddress(accessToken);
            return View("Graph");
        }
        catch (Exception e)
        {
            if (e.Message == Resource.Error_AuthChallengeNeeded) return new EmptyResult();
            return RedirectToAction("Index", "Error", new { message = Resource.Error_Message + Request.RawUrl + ": " + e.Message });
        }
    }

    [Authorize]
    // Send mail on behalf of the current user.
    public async Task<ActionResult> SendEmail()
    {
        if (string.IsNullOrEmpty(Request.Form["email-address"]))
        {
            ViewBag.Message = Resource.Graph_SendMail_Message_GetEmailFirst;
            return View("Graph");
        }

        // Build the email message.
        MessageRequest email = graphService.BuildEmailMessage(Request.Form["recipients"], Request.Form["subject"]);
        try
        {

            // Get an access token.
            string accessToken = await SampleAuthProvider.Instance.GetUserAccessTokenAsync();

            // Send the email.
            ViewBag.Message = await graphService.SendEmail(accessToken, email);

            // Reset the current user's email address and the status to display when the page reloads.
            ViewBag.Email = Request.Form["email-address"];
            return View("Graph");
        }
        catch (Exception e)
        {
            if (e.Message == Resource.Error_AuthChallengeNeeded) return new EmptyResult();
            return RedirectToAction("Index", "Error", new { message = Resource.Error_Message + Request.RawUrl + ": " + e.Message });
        }
    }
  ```

## Run the app
1. Press F5 to build and run the app. 

2. Sign in with your personal or work or school account and grant the requested permissions.

3. Choose the **Get email address** button. When the operation completes, the email address of the signed-in user is displayed on the page.

4. Optionally edit the recipient list and email subject, and then choose the **Send email** button. When the mail is sent, a Success message is displayed below the button.


## Next steps
- Try out the REST API using the [Graph explorer](https://graph.microsoft.io/graph-explorer).
- Find examples of common operations in the [Microsoft Graph Snippets Sample for ASP.NET 4.6](https://github.com/microsoftgraph/aspnet-snippets-sample), or explore our other [ASP.NET samples](http://aka.ms/aspnetgraphsamples) on GitHub.

## See also
- [Web application to web API authentication scenario](https://azure.microsoft.com/en-us/documentation/articles/active-directory-authentication-scenarios/#web-application-to-web-api)
- [Integrate Microsoft identity and the Microsoft Graph into a web application using OpenID Connect](https://azure.microsoft.com/en-us/documentation/samples/active-directory-dotnet-webapp-openidconnect-v2/)
- [Azure AD v2.0 protocols](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-protocols/)
- [Azure AD v2.0 tokens](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-tokens/)
