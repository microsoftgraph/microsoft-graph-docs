# Get started with Microsoft Graph in a universal Windows 10 app

> **Building apps for enterprise customers?** Your app may not work if your enterprise customer turns on enterprise mobility security features like <a href="https://azure.microsoft.com/en-us/documentation/articles/active-directory-conditional-access-device-policies/" target="_newtab">conditional device access</a>. In this case, you may not know and your customers may experience errors.

> To support **all enterprise customers** across **all enterprise scenarios**, you must use the Azure AD endpoint and manage your apps using the [Azure Management Portal](https://aka.ms/aadapplist). For more information, see [Deciding between the Azure AD and Azure AD v2.0 endpoints](../authorization/auth_overview.md#deciding-between-azure-ad-and-the-v2-authentication-endpoint).

This article describes the tasks required to get an access token from the [Azure AD v2.0 endpoint](https://graph.microsoft.io/en-us/docs/authorization/converged_auth) and call Microsoft Graph. It walks you through the code inside the [Microsoft Graph Connect Sample for UWP (REST)](https://github.com/microsoftgraph/uwp-csharp-connect-rest-sample) and [Microsoft Graph Connect Sample for UWP (Library)](https://github.com/microsoftgraph/uwp-csharp-connect-sample) samples to explain the main concepts that you have to implement in an app that uses Microsoft Graph. The article also describes how to access Microsoft Graph by using both raw REST calls and the [Microsoft Graph Client Library](http://www.nuget.org/packages/Microsoft.Graph/).

You can download both versions of the app that you'll create in this walkthrough from these GitHub repos:

* [Microsoft Graph Connect Sample for UWP (REST)](https://github.com/microsoftgraph/uwp-csharp-connect-rest-sample)
* [Microsoft Graph Connect Sample for UWP (Library)](https://github.com/microsoftgraph/uwp-csharp-connect-sample)

**Don't feel like building an app?** Use the [Microsoft Graph quick start](https://graph.microsoft.io/en-us/getting-started) to get up and running fast.

## Sample user interface

The sample contains a very simple user interface, consisting of a top command bar, a **connect button**, a **send mail** button, and a text box that is automatically populated with the signed-in user's e-mail address but that can be edited.

The **send mail** button is disabled when the user has not connected:

![Screen showing the connect button enabled and the send mail button disabled](images/SignedOut.png)

The top command bar contains a disconnect button when the user has connected:

![Screen showing the connected user's email address and the send mail button enabled](images/SignedIn.png)

All of the sample's UI strings are stored in the Resources.resw file inside the Assets folder.

## Prerequisites

To get started, you'll need:

- A [Microsoft account](https://www.outlook.com/) or a [work or school account](http://dev.office.com/devprogram)
- Visual Studio 2015
- Either the [Microsoft Graph Starter Project for UWP (Library)](https://github.com/microsoftgraph/uwp-csharp-connect-sample/tree/master/starter) or the [Microsoft Graph Starter Project for UWP (REST)](https://github.com/microsoftgraph/uwp-csharp-connect-rest-sample/tree/master/starter). Both templates contain empty classes that you'll add code to. They also contains resource strings. To get either or both of these projects, clone or download the [Microsoft Graph Connect Sample for UWP (Library)](https://github.com/microsoftgraph/uwp-csharp-connect-sample) and/or the [Microsoft Graph Connect Sample for UWP (REST)](https://github.com/microsoftgraph/uwp-csharp-connect-rest-sample) and then open the solution inside the **starter** folder.


## Register the app

1. Sign into the [App Registration Portal](https://apps.dev.microsoft.com/) using either your personal or work or school account.
2. Select **Add an app**.
3. Enter a name for the app, and select **Create application**.

	The registration page displays, listing the properties of your app.

4. Under **Platforms**, select **Add platform**.
5. Select **Mobile platform**.
6. Copy both the Client Id (App Id) and Redirect URI values to the clipboard. You'll need to enter these values into the sample app.

	The app id is a unique identifier for your app. The redirect URI is a unique URI provided by Windows 10 for each application to ensure that messages sent to that URI are only sent to that application.

7. Select **Save**.

## Configure the project

1. Open the solution file for the starter project in Visual Studio.
2. Open the project's **App.xaml** file and locate the `Application.Resources` node. Replace the application ID and redirect URI placeholders with the corresponding values of the app you registered.


```xml
    <Application.Resources>
        <!-- Add your Client Id here. -->
        <x:String x:Key="ida:ClientID">ENTER_YOUR_CLIENT_ID</x:String>
		<!-- Add your Redirect URI here. -->
        <x:String x:Key="ida:ReturnUrl">ENTER_YOUR_REDIRECT_URI</x:String>
    </Application.Resources>
```

## Install the Microsoft Authentication Library (MSAL)

The [Microsoft Authentication Library](https://www.nuget.org/packages/Microsoft.Identity.Client) contains classes and methods that make it easy to authenticate users through the Azure AD v2.0 endpoint.

1. In the Solution Explorer, right-click the project name and select **Manage NuGet Packages...**
2. Click Browse and search for Microsoft.Identity.Client.
3. Select the latest version of the Microsoft Authentication Library and click **Install**.

## Install the Microsoft Graph Client Library

> **Note** If you're going to use raw REST calls to access Microsoft Graph, you can skip this section.

1. In the Solution Explorer, right-click the project name and select **Manage NuGet Packages...**
2. Click Browse and search for Microsoft.Graph.
3. Select the latest version of the Microsoft Graph Client Library and click **Install**.

## Create the AuthenticationHelper.cs class

Open the AuthenticationHelper.cs file in the starter project. This file will contain all of the authentication code, along with additional logic that stores user information and forces authentication only when the user has disconnected from the app. This class contains at least two methods: `GetTokenForUserAsync`, and `Signout`. If you're using the Microsoft Graph Client Library, you'll need to add a third method: `GetAuthenticatedClient`.

The ``GetTokenHelperAsync`` method runs when the user authenticates and subsequently every time the app makes a call to Microsoft Graph.

**Using declarations**

***Client library version***

If you're using the Microsoft Graph Client Library, you'll need these declarations:

```c#
using System;
using System.Diagnostics;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using Microsoft.Graph;
using Microsoft.Identity.Client;
```

***REST version***

If you're using raw REST calls to access Microsoft Graph, you'll need these `using` declarations in the AuthenticationHelper class:

```c#
using System;
using System.Threading.Tasks;
using Windows.Storage;
using Microsoft.Identity.Client;
```

**Class fields**

Both versions of the AuthenticationHelper class will need these fields:

```c#
// The Client ID is used by the application to uniquely identify itself to the Azure AD v2.0 endpoint.
static string clientId = App.Current.Resources["ida:ClientID"].ToString();
public static string[] Scopes = { "User.Read", "Mail.Send" };
public static PublicClientApplication IdentityClientApp = new PublicClientApplication(clientId);
public static string TokenForUser = null;
public static DateTimeOffset Expiration;
```

Note that both versions use the MSAL `PublicClientApplication` class to authenticate the user. The `Scopes` field stores the Microsoft Graph permissions that the app will need to request when the user authenticates.

***Client library version***

If you're using the client library, store the `GraphServicesClient` as a field so that you only have to construct it once:

```c#
private static GraphServiceClient graphClient = null;
```

***REST version***

If you're using REST calls, you'll need to store some values in the app's roaming settings, since you'll need to store information about the user. (The client library supplies this information in the other version.)

```c#
public static ApplicationDataContainer _settings = ApplicationData.Current.RoamingSettings;
```

**GetTokenForUserAsync**

***Client library version***

The `GetTokenForUserAsync` method uses the PublicClientApplicationClass and the ClientId setting to get an access token for the user. If the user hasn't already authenticated, it launches the authentication UI. This is the version of the method to use if you're using the client library.

```c#
        public static async Task<string> GetTokenForUserAsync()
        {
            AuthenticationResult authResult;
            try
            {
                authResult = await IdentityClientApp.AcquireTokenSilentAsync(Scopes);
                TokenForUser = authResult.Token;
            }

            catch (Exception)
            {
                if (TokenForUser == null || Expiration <= DateTimeOffset.UtcNow.AddMinutes(5))
                {
                    authResult = await IdentityClientApp.AcquireTokenAsync(Scopes);

                    TokenForUser = authResult.Token;
                    Expiration = authResult.ExpiresOn;
                }
            }

            return TokenForUser;
        }
```

***REST version***

The REST version of the `GetTokenForUserAsync` method does a little more work, since it also needs to store some information about the signed-in user.

```c#
        public static async Task<string> GetTokenForUserAsync()
        {
            AuthenticationResult authResult;
            try
            {
                authResult = await IdentityClientApp.AcquireTokenSilentAsync(Scopes);
                TokenForUser = authResult.Token;
                // save user ID in local storage
                _settings.Values["userID"] = authResult.User.UniqueId;
                _settings.Values["userEmail"] = authResult.User.DisplayableId;
                _settings.Values["userName"] = authResult.User.Name;
            }

            catch (Exception)
            {
                if (TokenForUser == null || Expiration <= DateTimeOffset.UtcNow.AddMinutes(5))
                {
                    authResult = await IdentityClientApp.AcquireTokenAsync(Scopes);

                    TokenForUser = authResult.Token;
                    Expiration = authResult.ExpiresOn;

                    // save user ID in local storage
                    _settings.Values["userID"] = authResult.User.UniqueId;
                    _settings.Values["userEmail"] = authResult.User.DisplayableId;
                    _settings.Values["userName"] = authResult.User.Name;
                }
            }

            return TokenForUser;
        }
```

**Signout**

The `Signout` method in both versions signs out all users logged in through the `PublicClientApplication` (only one user, in this case) and nullifies the `TokenForUser` value. The version that uses the client library also nullifies the stored `GraphServicesClient`, and the REST version nullifies the values stored in the app's roaming settings.

***Client library version***

This is the client library version of the `Signout` method.

```c#
        public static void SignOut()
        {
            foreach (var user in IdentityClientApp.Users)
            {
                user.SignOut();
            }
            graphClient = null;
            TokenForUser = null;

        }
```

***REST version***

This is the REST version of the `Signout` method.

```c#
        public static void SignOut()
        {
            foreach (var user in IdentityClientApp.Users)
            {
                user.SignOut();
            }

            TokenForUser = null;

            //Clear stored values from last authentication.
            _settings.Values["userID"] = null;
            _settings.Values["userEmail"] = null;
            _settings.Values["userName"] = null;

        }
```

**GetAuthenticatedClient (client library only)**

Finally, if you're using the client library, you'll need a method that creates a `GraphServicesClient`. This method  creates a client that uses the `GetTokenForUserAsync` method for every call through the client to Microsoft Graph.

```c#
        public static GraphServiceClient GetAuthenticatedClient()
        {
            if (graphClient == null)
            {
                // Create Microsoft Graph client.
                try
                {
                    graphClient = new GraphServiceClient(
                        "https://graph.microsoft.com/v1.0",
                        new DelegateAuthenticationProvider(
                            async (requestMessage) =>
                            {
                                var token = await GetTokenForUserAsync();
                                requestMessage.Headers.Authorization = new AuthenticationHeaderValue("bearer", token);
                            }));
                    return graphClient;
                }

                catch (Exception ex)
                {
                    Debug.WriteLine("Could not create a graph client: " + ex.Message);
                }
            }

            return graphClient;
        }
```

## Send an email with Microsoft Graph

Open the MailHelper.cs file in your starter project. This file contains the code that constructs and sends an email. It consists of a single method -- ``ComposeAndSendMailAsync`` -- that constructs and sends a POST request to the **https://graph.microsoft.com/v1.0/me/microsoft.graph.SendMail** endpoint.

The ``ComposeAndSendMailAsync`` method takes three string values -- ``subject``, ``bodyContent``, and ``recipients`` -- that are passed to it by the MainPage.xaml.cs file. The ``subject`` and ``bodyContent`` strings are stored, along with all other UI strings, in the Resources.resw file. The ``recipients`` string comes from the address box in the app's interface.

**REST version**

The REST version of this file requires the following `using` declarations:

```c#
using System;
using System.Threading.Tasks;
```

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

The complete class will look like this:

```c#
    class MailHelper
    {
        /// <summary>
        /// Compose and send a new email.
        /// </summary>
        /// <param name="subject">The subject line of the email.</param>
        /// <param name="bodyContent">The body of the email.</param>
        /// <param name="recipients">A semicolon-separated list of email addresses.</param>
        /// <returns></returns>
        internal async Task ComposeAndSendMailAsync(string subject,
                                                            string bodyContent,
                                                            string recipients)
        {

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

            try
            {

                HttpClient client = new HttpClient();
                var token = await AuthenticationHelper.GetTokenForUserAsync();
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


            }

            catch (Exception e)
            {
                throw new Exception("We could not send the message: " + e.Message);
            }
        }
    }
```

**Client library version**

The client library version of this file requires the following `using` declarations:

```c#
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
```

The code for sending a message with the client library looks very similar to the code that uses REST calls. Instead of creating JSON objects and passing them directly to the **SendMail** endpoint in an HTTP POST request, you create equivalent objects that are defined in the client library and pass the resulting `Message` object to the `SendMail` method of the `GraphServiceClient`. The client does the work of fetching the access token and passing the request to the **SendMail** endpoint.

The complete class will look like this:

```c#
    public class MailHelper
    {
        /// <summary>
        /// Compose and send a new email.
        /// </summary>
        /// <param name="subject">The subject line of the email.</param>
        /// <param name="bodyContent">The body of the email.</param>
        /// <param name="recipients">A semicolon-separated list of email addresses.</param>
        /// <returns></returns>
        public async Task ComposeAndSendMailAsync(string subject,
                                                            string bodyContent,
                                                            string recipients)
        {

            // Prepare the recipient list
            string[] splitter = { ";" };
            var splitRecipientsString = recipients.Split(splitter, StringSplitOptions.RemoveEmptyEntries);
            List<Recipient> recipientList = new List<Recipient>();

            foreach (string recipient in splitRecipientsString)
            {
                recipientList.Add(new Recipient { EmailAddress = new EmailAddress { Address = recipient.Trim() } });
            }

            try
            {
                var graphClient = AuthenticationHelper.GetAuthenticatedClient();

                var email = new Message
                {
                    Body = new ItemBody
                    {
                        Content = bodyContent,
                        ContentType = BodyType.Html,
                    },
                    Subject = subject,
                    ToRecipients = recipientList,
                };

                try
                {
                    await graphClient.Me.SendMail(email, true).Request().PostAsync();
                }
                catch (ServiceException exception)
                {
                    throw new Exception("We could not send the message: " + exception.Error == null ? "No error message returned." : exception.Error.Message);
                }


            }

            catch (Exception e)
            {
                throw new Exception("We could not send the message: " + e.Message);
            }
        }
    }
```

##Create the user interface in MainPage.xaml

Now that you've written the code that does all the work of authenticating the user and sending a message through Microsoft Graph, all that you have to do is create the simple interface described above.

The MainPage.xaml file in your starter project already includes all of the XAML you'll need. All you need to do is add the code that drives the interface to the MainPage.xaml.cs file. Locate this file in your project and open it.

This file already contains all of the `using` declarations required for both the client library and REST versions of the sample.

***Client library version***

The client library version of the app creates a `GraphServiceClient` when the user authenticates.

Add this code inside your namespace to complete the client library version of the MainPage class in MainPage.xaml.cs:

```c#
    public sealed partial class MainPage : Page
    {
        private string _mailAddress;
        private string _displayName = null;
        private MailHelper _mailHelper = new MailHelper();

        public MainPage()
        {
            this.InitializeComponent();
        }

        protected override void OnNavigatedTo(NavigationEventArgs e)
        {
            // Developer code - if you haven't registered the app yet, we warn you.
            if (!App.Current.Resources.ContainsKey("ida:ClientID"))
            {
                InfoText.Text = ResourceLoader.GetForCurrentView().GetString("NoClientIdMessage");
                ConnectButton.IsEnabled = false;
            }
            else
            {
                InfoText.Text = ResourceLoader.GetForCurrentView().GetString("ConnectPrompt");
                ConnectButton.IsEnabled = true;
            }
        }

        /// <summary>
        /// Signs in the current user.
        /// </summary>
        /// <returns></returns>
        public async Task<bool> SignInCurrentUserAsync()
        {
            var graphClient = AuthenticationHelper.GetAuthenticatedClient();

            if (graphClient != null)
            {
                var user = await graphClient.Me.Request().GetAsync();
                string userId = user.Id;
                _mailAddress = user.UserPrincipalName;
                _displayName = user.DisplayName;
                return true;
            }
            else
            {
                return false;
            }

        }


        private async void ConnectButton_Click(object sender, RoutedEventArgs e)
        {
            ProgressBar.Visibility = Visibility.Visible;
            if (await SignInCurrentUserAsync())
            {
                InfoText.Text = "Hi " + _displayName + "," + Environment.NewLine + ResourceLoader.GetForCurrentView().GetString("SendMailPrompt");
                MailButton.IsEnabled = true;
                EmailAddressBox.IsEnabled = true;
                ConnectButton.Visibility = Visibility.Collapsed;
                DisconnectButton.Visibility = Visibility.Visible;
                EmailAddressBox.Text = _mailAddress;
            }
            else
            {
                InfoText.Text = ResourceLoader.GetForCurrentView().GetString("AuthenticationErrorMessage");
            }

            ProgressBar.Visibility = Visibility.Collapsed;
        }

        private async void MailButton_Click(object sender, RoutedEventArgs e)
        {
            _mailAddress = EmailAddressBox.Text;
            ProgressBar.Visibility = Visibility.Visible;
            MailStatus.Text = string.Empty;
            try
            {
                await _mailHelper.ComposeAndSendMailAsync(ResourceLoader.GetForCurrentView().GetString("MailSubject"), ComposePersonalizedMail(_displayName), _mailAddress);
                MailStatus.Text = string.Format(ResourceLoader.GetForCurrentView().GetString("SendMailSuccess"), _mailAddress);
            }
            catch (Exception)
            {
                MailStatus.Text = ResourceLoader.GetForCurrentView().GetString("MailErrorMessage");
            }
            finally
            {
                ProgressBar.Visibility = Visibility.Collapsed;
            }

        }

        // <summary>
        // Personalizes the email.
        // </summary>
        public static string ComposePersonalizedMail(string userName)
        {
            return String.Format(ResourceLoader.GetForCurrentView().GetString("MailContents"), userName);
        }

        private void Disconnect_Click(object sender, RoutedEventArgs e)
        {
            ProgressBar.Visibility = Visibility.Visible;
            AuthenticationHelper.SignOut();
            ProgressBar.Visibility = Visibility.Collapsed;
            MailButton.IsEnabled = false;
            EmailAddressBox.IsEnabled = false;
            ConnectButton.Visibility = Visibility.Visible;
            InfoText.Text = ResourceLoader.GetForCurrentView().GetString("ConnectPrompt");
            this._displayName = null;
            this._mailAddress = null;
        }
    }
```

***REST version***

The REST version of this class looks very similar to the client library version, except that it calls the `GetTokenForUserAsync` method directly when the user authenticates. It also retrieves user values from the app's roaming settings.

Add this code inside your namespace to complete the REST version of the MainPage class in MainPage.xaml.cs:

```c#
    public sealed partial class MainPage : Page
    {
        private string _mailAddress;
        private string _displayName = null;
        private MailHelper _mailHelper = new MailHelper();
        public static ApplicationDataContainer _settings = ApplicationData.Current.RoamingSettings;

        public MainPage()
        {
            this.InitializeComponent();
        }

        protected override void OnNavigatedTo(NavigationEventArgs e)
        {
            // Developer code - if you haven't registered the app yet, we warn you.
            if (!App.Current.Resources.ContainsKey("ida:ClientID"))
            {
                InfoText.Text = ResourceLoader.GetForCurrentView().GetString("NoClientIdMessage");
                ConnectButton.IsEnabled = false;
            }
            else
            {
                InfoText.Text = ResourceLoader.GetForCurrentView().GetString("ConnectPrompt");
                ConnectButton.IsEnabled = true;
            }
        }

        /// <summary>
        /// Signs in the current user.
        /// </summary>
        /// <returns></returns>
        public async Task<bool> SignInCurrentUserAsync()
        {
            var token = await AuthenticationHelper.GetTokenForUserAsync();

            if (token != null)
            {
                string userId = (string)_settings.Values["userID"];
                _mailAddress = (string)_settings.Values["userEmail"];
                _displayName = (string)_settings.Values["userName"];
                return true;
            }
            else
            {
                return false;
            }

        }


        private async void ConnectButton_Click(object sender, RoutedEventArgs e)
        {
            ProgressBar.Visibility = Visibility.Visible;
            if (await SignInCurrentUserAsync())
            {
                InfoText.Text = "Hi " + _displayName + "," + Environment.NewLine + ResourceLoader.GetForCurrentView().GetString("SendMailPrompt");
                MailButton.IsEnabled = true;
                EmailAddressBox.IsEnabled = true;
                ConnectButton.Visibility = Visibility.Collapsed;
                DisconnectButton.Visibility = Visibility.Visible;
                EmailAddressBox.Text = _mailAddress;
            }
            else
            {
                InfoText.Text = ResourceLoader.GetForCurrentView().GetString("AuthenticationErrorMessage");
            }

            ProgressBar.Visibility = Visibility.Collapsed;
        }

        private async void MailButton_Click(object sender, RoutedEventArgs e)
        {
            _mailAddress = EmailAddressBox.Text;
            ProgressBar.Visibility = Visibility.Visible;
            MailStatus.Text = string.Empty;
            try
            {
                await _mailHelper.ComposeAndSendMailAsync(ResourceLoader.GetForCurrentView().GetString("MailSubject"), ComposePersonalizedMail(_displayName), _mailAddress);
                MailStatus.Text = string.Format(ResourceLoader.GetForCurrentView().GetString("SendMailSuccess"), _mailAddress);
            }
            catch (Exception)
            {
                MailStatus.Text = ResourceLoader.GetForCurrentView().GetString("MailErrorMessage");
            }
            finally
            {
                ProgressBar.Visibility = Visibility.Collapsed;
            }

        }

        // <summary>
        // Personalizes the email.
        // </summary>
        public static string ComposePersonalizedMail(string userName)
        {
            return String.Format(ResourceLoader.GetForCurrentView().GetString("MailContents"), userName);
        }

        private void Disconnect_Click(object sender, RoutedEventArgs e)
        {
            ProgressBar.Visibility = Visibility.Visible;
            AuthenticationHelper.SignOut();
            ProgressBar.Visibility = Visibility.Collapsed;
            MailButton.IsEnabled = false;
            EmailAddressBox.IsEnabled = false;
            ConnectButton.Visibility = Visibility.Visible;
            InfoText.Text = ResourceLoader.GetForCurrentView().GetString("ConnectPrompt");
            this._displayName = null;
            this._mailAddress = null;
        }
    }
```

You've now performed the three steps required for interacting with Microsoft Graph: app registration, user authentication, and making a request.

## Run the app
1. Press F5 to build and run the app.

2. Sign in with your personal or work or school account and grant the requested permissions.

3. Choose the **Send email** button. When the mail is sent, a Success message is displayed below the button.

## Next steps
- Try out the REST API using the [Graph explorer](https://graph.microsoft.io/graph-explorer).
- Find examples of common operations for both REST and SDK operations in the [Microsoft Graph UWP Snippets Sample (SDK)](https://github.com/microsoftgraph/uwp-csharp-snippets-sample) and the [Microsoft Graph UWP Snippets Sample (REST)](https://github.com/microsoftgraph/uwp-csharp-snippets-rest-sample), or explore our other [UWP samples](https://github.com/microsoftgraph?utf8=%E2%9C%93&query=uwp) on GitHub.

## See also
- [Microsoft Graph .NET Client Library](https://github.com/microsoftgraph/msgraph-sdk-dotnet)
- [Azure AD v2.0 protocols](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-protocols/)
- [Azure AD v2.0 tokens](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-tokens/)
