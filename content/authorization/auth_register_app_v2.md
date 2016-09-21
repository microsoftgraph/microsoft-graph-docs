## Register your Microsoft Graph application with the Azure AD v2.0 endpoint

To use the Azure AD v2.0 endpoint, you need to register your app on the Microsoft App Registration Portal (https://apps.dev.microsoft.com). Registering your app establishes your app's identity with the authentication provider, and enables your app to prove its identity when submitting authentication requests from the user. Registration generates the app ID and password that you'll use to configure the app for authentication.

> Note: This topic covers app registration with the Azure AD v2.0 endpoint. To [register your app with Azure AD](../auth_azure_ad/app_authentication_azure_ad.md), use the [Microsoft Azure Management portal](https://aka.ms/aadapplist).
> 
> Also, be aware that if you've registered apps in the Microsoft Azure Management portal already, those apps will not be listed in the App Registration Portal. Manage those apps in the Azure Management portal. 

1. Sign into the [Microsoft App Registration Portal](https://apps.dev.microsoft.com/) using either your personal or work or school account.

2. Choose **Add an app**.

3. Enter a name for the app, and choose **Create application**.

	The registration page displays, listing the properties of your app.

4. Copy the application ID. This is the unique identifier for your app.

	You'll use the application ID to configure the app.

5. Under **Platforms**, choose **Add platform**, and select the appropriate platform for your app:
	
	For client apps:
	- Select **Mobile platform**.

	- Copy both the Client Id (App Id) and Redirect URI values to the clipboard. You'll need to enter these values into the sample app.

		The app id is a unique identifier for your app. The redirect URI is a unique URI provided for each application to ensure that messages sent to that URI are only sent to that application. 

	For web apps:
	- Select **Web**.
	- Make sure the **Allow Implicit Flow** check box is selected, and specify a Redirect URI.

		The Allow Implicit Flow option enables the OpenID Connect hybrid flow. During authentication, this enables the app to receive both sign-in info (the id_token) and artifacts (in this case, an authorization code) that the app uses to obtain an access token.

		The redirect URI is the location in your app that the Azure AD v2.0 endpoint calls once it has processed the authentication request.
	- Under **Application Secrets**, choose **Generate New Password**. Copy the app secret from the **New password generated** dialog.
		You'll use the app secret to configure the app.
	
6. Choose **Save**.

## See also

[App authentication with Microsoft Graph](../auth_overview.md)
