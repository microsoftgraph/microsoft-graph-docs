# Call Microsoft Graph in a universal Windows 10 app

In this article we look at the minimum tasks required to get an access token from Azure Active Directory (AD) and call the Microsoft Graph. We use code from the [Office 365 Connect Sample for UWP Using Microsoft Graph](https://github.com/microsoftgraph/uwp-csharp-connect-rest-sample) to explain the main concepts that you have to implement in your app.

## Sample user interface

The sample contains a very simple user interface, consisting of a top command bar, a **connect button**, a **send mail** button, and a text box that is automatically populated with the signed-in user's e-mail address but that can be edited. The command bar also contains a button that enables developers to find the app's redirect URI.

The **send mail** button is disabled when the user has not connected:

![Screen showing the connect button enabled and the send mail button disabled](images/SignedOut.png)

The top command bar contains a disconnect button when the user has connected:

![Screen showing the connected user's email address and the send mail button enabled](images/SignedIn.png)

All of the sample's UI strings are stored in the Resources.resw file inside the Assets folder.

## Register the app
 
Windows 10 provides each application with a unique URI and ensures that messages sent to that URI are only sent to that application. You need to create your app and find this system-generated URI before you register your app. In the sample you'll find this method in the AuthenticationHelper.cs file:

```c#
        public static string GetAppRedirectURI()
        {
            // Windows 10 universal apps require redirect URI in the format below. Add a breakpoint to this line and run the app before you register it, so that
            // you can supply the correct redirect URI value.
            return string.Format("ms-appx-web://microsoft.aad.brokerplugin/{0}", WebAuthenticationBroker.GetCurrentApplicationCallbackUri().Host).ToUpper();
        }
```

That method is triggered in the sample by the **copy redirect URI** button, but you can also follow the pattern in the [AzureAD-NativeClient-UWP-WAM](https://github.com/Azure-Samples/AzureAD-NativeClient-UWP-WAM) sample, where the string is defined in the MainPage class declaration and you can fetch it by using the Visual Studio debugger. 

Follow the steps in the [Register and configure the app](https://github.com/microsoftgraph/uwp-csharp-connect-rest-sample#register) of the sample's Readme in order to register your app after you've gotten the redirect URI value.

You'll need the client ID value from the **Configure** page of your Azure application when you configure your app for authentication.

## Connect to Microsoft Graph

The sample uses the native Windows 10 WebAccountManager API to authenticate users. It follows a pattern similar to the one described in the [Develop Windows Universal Apps with Azure AD and the Windows 10 Identity API](http://blogs.technet.com/b/ad/archive/2015/08/03/develop-windows-universal-apps-with-azure-ad-and-the-windows-10-identity-api.aspx) blog post and demonstrated in the [AzureAD-NativeClient-UWP-WAM](https://github.com/Azure-Samples/AzureAD-NativeClient-UWP-WAM) sample.

The App.xaml file contains the key/value pairs that your app will need in order to authenticate the user and authorize the app to send an email:

```xml
    <Application.Resources>
        <!-- Add your client id here. -->
        <x:String x:Key="ida:ClientID"><your client id></x:String>
        <x:String x:Key="ida:AADInstance">https://login.microsoftonline.com/</x:String>
        <!-- Add your developer tenant domain here. -->
        <x:String x:Key="ida:Domain">yourtenant.onmicrosoft.com</x:String>
    </Application.Resources>
```

Add the client ID value that you got when you registered your app as the value for the **ida:ClientID** key. Change the value of the **ida:Domain** key so that it matches your Office 365 tenant.

The AuthenticationHelper.cs file contains all of the authentication code, along with additional logic that stores user information and forces authentication only when the user has disconnected from the app.

The ``GetTokenHelperAsync`` method defined in this file runs when the user authenticates and subsequently every time the app makes a call to Microsoft Graph. Its first task is to find an Azure AD account provider:

```c#
           aadAccountProvider = await WebAuthenticationCoreManager.FindAccountProviderAsync("https://login.microsoft.com", authority);
```

The value of ``authority`` is a concatenated string built from two values stored in the App.xaml file: the value of the **ida:AADInstance** key plus the value of the **ida:Domain** key. This creates a tenant-specific authority. You can also use the string "organizations" if you want your app to run on any Azure AD tenant.

After the user authenticates, the app stores the user ID value in ``ApplicationData.Current.RoamingSettings``. The ``GetTokenHelperAsync`` method first checks to see if this value exists, and if so, it tries to authenticate silently:

```c#
            // Check if there's a record of the last account used with the app
            var userID = _settings.Values["userID"];

            if (userID != null)
            {

                WebTokenRequest webTokenRequest = new WebTokenRequest(aadAccountProvider, string.Empty, clientId);
                webTokenRequest.Properties.Add("resource", ResourceUrl);

                // Get an account object for the user
                userAccount = await WebAuthenticationCoreManager.FindAccountAsync(aadAccountProvider, (string)userID);


                // Ensure that the saved account works for getting the token we need
                WebTokenRequestResult webTokenRequestResult = await WebAuthenticationCoreManager.RequestTokenAsync(webTokenRequest, userAccount);
                if (webTokenRequestResult.ResponseStatus == WebTokenRequestStatus.Success || webTokenRequestResult.ResponseStatus == WebTokenRequestStatus.AccountSwitch)
                {
                    WebTokenResponse webTokenResponse = webTokenRequestResult.ResponseData[0];
                    userAccount = webTokenResponse.WebAccount;
                    token = webTokenResponse.Token;

                }
                else
                {
                    // The saved account could not be used for getting a token
                    // Make sure that the UX is ready for a new sign in
                    SignOut();
                }

            }
```

The app uses the Microsoft Graph endpoint --  **https://graph.microsoft.com/** -- as the resource value. When it constructs the ``WebTokenRequest`` it uses the client ID value that you added to the App.xaml file. Since the app knows the user ID and the user hasn't disconnected, the WebAccountManager API can find the user account and pass it to the token request. The ``WebAuthenticationCoreManager.RequestTokenAsync`` method returns an access token with the appropriate permissions assigned to it.

If the app finds no value for ``userID`` in the roaming settings, it constructs a ``WebTokenRequest`` that forces the user to authenticate through the UI:

```c#
            else
            {
                // There is no recorded user. Start a sign in flow without imposing a specific account.

                WebTokenRequest webTokenRequest = new WebTokenRequest(aadAccountProvider, string.Empty, clientId, WebTokenRequestPromptType.ForceAuthentication);
                webTokenRequest.Properties.Add("resource", ResourceUrl);

                WebTokenRequestResult webTokenRequestResult = await WebAuthenticationCoreManager.RequestTokenAsync(webTokenRequest);
                if (webTokenRequestResult.ResponseStatus == WebTokenRequestStatus.Success)
                {
                    WebTokenResponse webTokenResponse = webTokenRequestResult.ResponseData[0];
                    userAccount = webTokenResponse.WebAccount;
                    token = webTokenResponse.Token;

                }
            }
```

If either attempt to retrieve a token is successful, the ``GetTokenHelperAsync`` method finishes by storing important user information in the roaming settings and then returning the token value. Otherwise, it makes sure that the roaming settings are null and returns a null value.

```c#
            // We succeeded in getting a valid user.
            if (userAccount != null)
            {
                // save user ID in local storage
                _settings.Values["userID"] = userAccount.Id;
                _settings.Values["userEmail"] = userAccount.UserName;
                _settings.Values["userName"] = userAccount.Properties["DisplayName"];

                return token;
            }

            // We didn't succeed in getting a valid user. Clear the app settings so that another user can sign in.
            else
            {
                
                SignOut();
                return null;
            }
```

## Send an email with Microsoft Graph

The MailHelper.cs file contains the code that constructs and sends an email. It consists of a single method -- ``ComposeAndSendMailAsync`` -- that constructs and sends a POST request to the **https://graph.microsoft.com/v1.0/me/microsoft.graph.SendMail** endpoint. 

The ``ComposeAndSendMailAsync`` method takes three string values -- ``subject``, ``bodyContent``, and ``recipients`` -- that are passed to it by the MainPage.xaml.cs file. The ``subject`` and ``bodyContent`` strings are stored, along with all other UI strings, in the Resources.resw file. The ``recipients`` string comes from the address box in the app's interface. 

Since the user can potentially pass more than one address, the first task is to split the ``recipients`` string into a set of EmailAddress objects that can then be passed in the POST body of the request:

```c#
            // Prepare the recipient list
            string[] splitter = { ";" };
            var splitRecipientsString = recipients.Split(splitter, StringSplitOptions.RemoveEmptyEntries);
            string recipientsJSON = null;

            int n = 0;
            foreach (string recipient in splitRecipientsString)
            {
                if ( n==0)
                recipientsJSON += "{'EmailAddress':{'Address':'" + recipient.Trim() + "'}}";
                else
                {
                    recipientsJSON += ", {'EmailAddress':{'Address':'" + recipient.Trim() + "'}}";
                }
                n++;
            }
```

The second task is to construct a valid JSON Message object and send it to the **me/microsoft.graph.SendMail** endpoint through an HTTP POST request. Since the ``bodyContent`` string is an HTML document, the request sets the **ContentType** value to HTML. Also note the call to ``AuthenticationHelper.GetTokenHelperAsync`` to ensure that we have a fresh access token to pass in the request.

```c#
                HttpClient client = new HttpClient();
                var token = await AuthenticationHelper.GetTokenHelperAsync();
                client.DefaultRequestHeaders.Add("Authorization", "Bearer " + token);

                // Build contents of post body and convert to StringContent object.
                // Using line breaks for readability.
                string postBody = "{'Message':{" 
                    +  "'Body':{ " 
                    + "'Content': '" + bodyContent + "'," 
                    + "'ContentType':'HTML'}," 
                    + "'Subject':'" + subject + "'," 
                    + "'ToRecipients':[" + recipientsJSON +  "]}," 
                    + "'SaveToSentItems':true}";

                var emailBody = new StringContent(postBody, System.Text.Encoding.UTF8, "application/json");

                HttpResponseMessage response = await client.PostAsync(new Uri("https://graph.microsoft.com/v1.0/me/microsoft.graph.SendMail"), emailBody);

                if ( !response.IsSuccessStatusCode)
                {

                    throw new Exception("We could not send the message: " + response.StatusCode.ToString());
                }
```

Once you've made a successful REST request, you've performed the three steps required for interacting with Microsoft Graph: app registration, user authentication, and making a REST request.


<!--## Additional resources

* [Develop Windows Universal Apps with Azure AD and the Windows 10 Identity API](http://blogs.technet.com/b/ad/archive/2015/08/03/develop-windows-universal-apps-with-azure-ad-and-the-windows-10-identity-api.aspx)
* [AzureAD-NativeClient-UWP-WAM](https://github.com/Azure-Samples/AzureAD-NativeClient-UWP-WAM)
* [Office Dev Center](http://dev.office.com)-->

