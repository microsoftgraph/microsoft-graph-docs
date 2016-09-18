# Call Microsoft Graph in a Xamarin Forms app

This article describes the tasks required to get an access token from the [v2.0 authentication endpoint](https://graph.microsoft.io/en-us/docs/authorization/converged_auth) and call Microsoft Graph. It walks you through the code inside the [Microsoft Graph Connect Sample for Xamarin Forms](https://github.com/microsoftgraph/xamarin-csharp-connect-sample) sample to explain the main concepts that you have to implement in an app that uses Microsoft Graph. The article also describes how to access Microsoft Graph by using the [Microsoft Graph Client Library](http://www.nuget.org/packages/Microsoft.Graph/).

This is the app you'll create.

| UWP | Android | iOS |
| --- | ------- | ----|
| <img src="images/UWP.png" alt="Connect sample on UWP" width="100%" /> | <img src="images/Droid.png" alt="Connect sample on Android" width="100%" /> | <img src="images/iOS.png" alt="Connect sample on iOS" width="100%" /> |

**Don't feel like building an app?** Use the [Microsoft Graph Quick Start](https://graph.microsoft.io/en-us/getting-started) to get up and running fast, or download the [Microsoft Graph Connect Sample for Xamarin Forms](https://github.com/microsoftgraph/xamarin-csharp-connect-sample) that this article is based on.

## Prerequisites

To get started, you'll need: 

- A [Microsoft account](https://www.outlook.com/) or an [Office 365 for business account](https://msdn.microsoft.com/en-us/office/office365/howto/setup-development-environment#bk_Office365Account)
- Visual Studio 2015 
- [Xamarin for Visual Studio](https://www.xamarin.com/visual-studio)
- Windows 10 ([development mode enabled](https://msdn.microsoft.com/library/windows/apps/xaml/dn706236.aspx))
- The [Microsoft Graph Connect Starter Project for Xamarin Forms](https://github.com/microsoftgraph/xamarin-csharp-connect-sample/tree/master/starter). This template contains several classes that you'll add code to. It also contains complete views and resource strings. To get this project, clone or download the [Microsoft Graph Connect Sample for Xamarin Forms](https://github.com/microsoftgraph/xamarin-csharp-connect-sample) and open the **XamarinConnect** solution inside the **starter** folder. 

If you want to run the iOS project in this sample, you'll need the following:

- The latest iOS SDK
- The latest version of Xcode
- Mac OS X Yosemite(10.10) & above 
- [Xamarin.iOS](https://developer.xamarin.com/guides/ios/getting_started/installation/mac/)
- A [Xamarin Mac agent connected to Visual Studio](https://developer.xamarin.com/guides/ios/getting_started/installation/windows/connecting-to-mac/)


## Register the app
 
1. Sign into the [App Registration Portal](https://apps.dev.microsoft.com/) using either your personal or work or school account.
2. Select **Add an app**.
3. Enter a name for the app, and select **Create application**.
	
	The registration page displays, listing the properties of your app.
 
4. Under **Platforms**, select **Add platform**.
5. Select **Mobile platform**.
6. Copy the application id. You'll need to enter this values into the sample app.

	The application id is a unique identifier for your app. The redirect URI is a unique URI provided by Windows 10 for each application to ensure that messages sent to that URI are only sent to that application. 

7. Select **Save**.

## Configure the project

1. Open the solution file for the starter project in Visual Studio.
2. Open the **App.cs** file inside the **XamarinConnect (Portable)** project and locate the `ClientId` field. Replace the application ID placeholder with the application id of the app you registered.

```c#
public static string ClientID = "ENTER_YOUR_CLIENT_ID";
public static string[] Scopes = { "User.Read", "Mail.Send" };
```
The `Scopes` value stores the Microsoft Graph permission scopes that the app will need to request when the user authenticates. Note that the `App` class constructor uses the ClientID value to instantiate an instance of the MSAL `PublicClientApplication` class. You'll use this class later to authenticate the user.

```c#
IdentityClientApp = new PublicClientApplication(ClientID);
```

## Install the Microsoft Authentication Library (MSAL)

The [Microsoft Authentication Library](https://www.nuget.org/packages/Microsoft.Identity.Client) contains classes and methods that make it easy to authenticate users through the v2.0 authentication endpoint.

1. In the Solution Explorer right-click the **XamarinConnect (Portable)** project and select **Manage NuGet Packages...**
2. Click Browse and search for Microsoft.Identity.Client.
3. Select the latest version of the Microsoft Authentication Library and click **Install**.

Perform these same steps for the **XamarinConnect.Droid**, **XamarinConnect.iOS**, and **XamarinConnect.UWP** projects. Your app will not build if MSAL isn't installed in all four projects.

## Install the Microsoft Graph Client Library

1. In the Solution Explorer right-click the **XamarinConnect (Portable)** project and select **Manage NuGet Packages...**
2. Click Browse and search for Microsoft.Graph.
3. Select the latest version of the Microsoft Graph Client Library and click **Install**.

## Create the AuthenticationHelper.cs class

Open the AuthenticationHelper.cs file inside the **XamarinConnect (Portable)** project. This file will contain all of the authentication code, along with additional logic that stores user information and forces authentication only when the user has disconnected from the app. This class contains at least three methods: `GetTokenForUserAsync`, `Signout`, and `GetAuthenticatedClient`.

The `GetTokenHelperAsync` method runs when the user authenticates and subsequently every time the app makes a call to Microsoft Graph.

**Using declarations**

Make sure you have these declarations to the top of the file:

```c#
using Microsoft.Graph;
using System;
using System.Diagnostics;
using System.Net.Http.Headers;
using System.Threading.Tasks;
using Microsoft.Identity.Client;
```

**Class fields**

Make sure you have these fields inside the AuthenticationHelper class:

```c#
public static string TokenForUser = null;
public static DateTimeOffset expiration;
private static GraphServiceClient graphClient = null;
```

The sample stores the `GraphServicesClient` in a field so that you only have to construct it once. It stores the expiration `DateTimeOffset` of the access token so that it doesn't fetch a new token until the existing token is about to expire.

**GetTokenForUserAsync**

The `GetTokenForUserAsync` method uses the `PublicClientApplicationClass` instantiated in the **App.cs** file to get an access token for the user. If the user hasn't already authenticated, it launches the authentication UI.

```c#
        public static async Task<string> GetTokenForUserAsync()
        {
            if (TokenForUser == null || expiration <= DateTimeOffset.UtcNow.AddMinutes(5))
            {
                AuthenticationResult authResult = await App.IdentityClientApp.AcquireTokenAsync(App.Scopes);

                TokenForUser = authResult.Token;
                expiration = authResult.ExpiresOn;
            }

            return TokenForUser;
        }
```

**Signout**

The `Signout` method signs out all users logged in through the `PublicClientApplication` (only one user, in this case) and nullifies the `TokenForUser` value. It also nullifies the `GraphServicesClient` value.

```c#
        public static void SignOut()
        {
            foreach (var user in App.IdentityClientApp.Users)
            {
                user.SignOut();
            }
            graphClient = null;
            TokenForUser = null;

        }
``` 

**GetAuthenticatedClient**

Finally, you'll need a method that creates a `GraphServicesClient`. This method  creates a client that uses the `GetTokenForUserAsync` method for every call through the client to Microsoft Graph.

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

The ``ComposeAndSendMailAsync`` method takes three string values -- ``subject``, ``bodyContent``, and ``recipients`` -- that are passed to it by the MainPage.xaml.cs file. The ``subject`` and ``bodyContent`` strings are stored, along with all other UI strings, in the AppResources.resx file. The ``recipients`` string comes from the address box in the app's interface. 

**Using declarations**

Add these declarations to the top of the file:

```c#
using System;
using System.Collections.Generic;
using System.Threading.Tasks;
using Microsoft.Graph;
```

Since the user can potentially pass more than one address, the first task is to split the ``recipients`` string into a set of `EmailAddress` objects that can then be used to construct the list of `Recipients` objects that will be passed in the POST body of the request:

```c#
            // Prepare the recipient list
            string[] splitter = { ";" };
            var splitRecipientsString = recipients.Split(splitter, StringSplitOptions.RemoveEmptyEntries);
            List<Recipient> recipientList = new List<Recipient>();

            foreach (string recipient in splitRecipientsString)
            {
                recipientList.Add(new Recipient { EmailAddress = new EmailAddress { Address = recipient.Trim() } });
            }
```

The second task is to construct a `Message` object and send it to the **me/microsoft.graph.SendMail** endpoint through the `GraphServiceClient`. Since the ``bodyContent`` string is an HTML document, the request sets the **ContentType** value to HTML.

```c#
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
```

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

You've now performed the three steps required for interacting with Microsoft Graph: app registration, user authentication, and making a request. 

## Run the app
1. Select the project that you want to run. If you select the Universal Windows Platform option, you can run the sample on the local machine. If you want to run the iOS project, you'll need to connect to a [Mac that has the Xamarin tools](https://developer.xamarin.com/guides/ios/getting_started/installation/windows/connecting-to-mac/) installed on it. (You can also open this solution in Xamarin Studio on a Mac and run the sample directly from there.) You can use the [Visual Studio Emulator for Android](https://www.visualstudio.com/features/msft-android-emulator-vs.aspx) if you want to run the Android project. 

    ![](images/SelectProject.png "Select project in Visual Studio")

2. Press F5 to build and debug. Run the solution and sign in with either your personal or work or school account.
    > **Note** You might have to open the Build Configuration Manager to make sure that the Build and Deploy steps are selected for the UWP project. 

3. Sign in with your personal or work or school account and grant the requested permissions.

4. Choose the **Send mail** button. When the mail is sent, a Success message is displayed.

## Next steps
- Try out the REST API using the [Graph explorer](https://graph.microsoft.io/graph-explorer).
- Find examples of common operations in the [Microsoft Graph SDK Snippets Library for Xamarin.Forms](https://github.com/microsoftgraph/xamarin-csharp-snippets-sample), or explore our other [Xamarin samples](https://github.com/microsoftgraph?utf8=%E2%9C%93&query=xamarin) on GitHub.

## See also
- [Azure AD v2.0 protocols](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-protocols/)
- [Azure AD v2.0 tokens](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-tokens/)
