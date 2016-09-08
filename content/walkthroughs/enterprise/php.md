# Call Microsoft Graph in a PHP app 

In this article we look at the minimum tasks required to get an access token from Azure Active Directory (AD) and call the Microsoft Graph API. We use code from the [Office 365 PHP Connect sample using Microsoft Graph](https://github.com/microsoftgraph/php-connect-rest-sample) to explain the main concepts that you have to implement in your app.

![Office 365 PHP Connect sample screenshot](./images/web-screenshot.png)

## Overview

To call the Microsoft Graph API, your PHP app must complete the following tasks.

1. Register the application in Azure Active Directory
2. Redirect the browser to the sign-in page
3. Receive an authorization code in your reply URL page
4. Request an access token from the token endpoint
5. Use the access token in a request to the Microsoft Graph API

<!--<a name="register"/>-->
## Register the application in Azure Active Directory

Before you can start working with Office 365, you need to register your application and set permissions to use Microsoft Graph services.
With just a few clicks, you can register your application to access a user's work or school account using the [Application Registration Tool](https://dev.office.com/app-registration). To manage it you will need to go to the [Microsoft Azure Management portal](https://manage.windowsazure.com)

Alternatively, see the section [Register your web server app with the Azure Management Portal](https://msdn.microsoft.com/en-us/office/office365/HowTo/add-common-consent-manually#bk_RegisterServerApp) for instructions on how to manually register the app, keep in mind the following details:

* Specify a page in your PHP app as the **Sign-on URL** in step 6. In the case of the Connect sample, this page is [`Callback.php`](https://github.com/microsoftgraph/php-connect-rest-sample/blob/master/app/callback.php).
* [Configure the **Delegated permissions**](https://github.com/microsoftgraph/php-connect-rest-sample/wiki/Grant-permissions-to-the-Connect-application-in-Azure) that your app requires. The Connect sample requires **Send mail as signed-in user** permission.

Take note of the following values in the **Configure** page of your Azure application.

* Client ID
* A valid key
* A reply URL

You need these values as parameters in the OAuth flow in your app.

<!--<a name="redirect"/>-->
## Redirect the browser to the sign-in page

Your app needs to redirect the browser to the sign-in page to get an authorization code and continue the OAuth flow.

In the Connect sample, the code that redirects the browser is in the [`AuthenticationManager.connect`](https://github.com/microsoftgraph/php-connect-rest-sample/blob/master/src/AuthenticationManager.php#L41) function.

```php
// Redirect the browser to the authorization endpoint. Auth endpoint is
// https://login.microsoftonline.com/common/oauth2/authorize
$redirect = Constants::AUTHORITY_URL . Constants::AUTHORIZE_ENDPOINT . 
            '?response_type=code' . 
            '&client_id=' . urlencode(Constants::CLIENT_ID) . 
            '&redirect_uri=' . urlencode(Constants::REDIRECT_URI);
header("Location: {$redirect}");
exit();
```

> **Note:** <br />
> You must send the **Location** header before writing any output to the page.

<!--<a name="authcode"/>-->
## Receive an authorization code in your reply URL page

After the user signs-in, the flow returns the browser to the reply URL in your app. Azure appends an authorization code to the query string. The Connect sample uses the [`Callback.php`](https://github.com/microsoftgraph/php-connect-rest-sample/blob/master/app/callback.php) page for this purpose.

The authorization code is provided in the `code` query string variable. The Connect sample saves the code to a session variable to use it later.

```php
if (isset($_GET['code'])) {
    $_SESSION['code'] =  $_GET['code'];
}
```

<!--<a name="accesstoken"/>-->
## Request an access token from the token endpoint

Once you have the authorization code, you can use it along the client ID, key, and reply URL values that you got from Azure AD to request an access token. 

> **Note:** <br />
> The request must also specify a resource that we are trying to consume. In the case of Microsoft Graph API, the resource value is `https://graph.microsoft.com`.

The Connect sample requests a token using the code in the [`AuthenticationManager.acquireToken`](https://github.com/microsoftgraph/php-connect-rest-sample/blob/master/src/AuthenticationManager.php#L62) function. Here is the most relevant code.

```php
$tokenEndpoint = Constants::AUTHORITY_URL . Constants::TOKEN_ENDPOINT;

// Send a POST request to the token endpoint to retrieve tokens.
// Token endpoint is:
// https://login.microsoftonline.com/common/oauth2/token
$response = RequestManager::sendPostRequest(
    $tokenEndpoint, 
    array(),
    array(
        'client_id' => Constants::CLIENT_ID,
        'client_secret' => Constants::CLIENT_SECRET,
        'code' => $_SESSION['code'],
        'grant_type' => 'authorization_code',
        'redirect_uri' => Constants::REDIRECT_URI,
        'resource' => Constants::RESOURCE_ID
    )

// Store the raw response in JSON format.
$jsonResponse = json_decode($response, true);

// The access token response has the following parameters:
// access_token - The requested access token.
// expires_in - How long the access token is valid.
// expires_on - The time when the access token expires.
// id_token - An unsigned JSON Web Token (JWT).
// refresh_token - An OAuth 2.0 refresh token.
// resource - The App ID URI of the web API (secured resource).
// scope - Impersonation permissions granted to the client application.
// token_type - Indicates the token type value.
foreach ($jsonResponse as $key=>$value) {
    $_SESSION[$key] = $value;
}
```

> **Note:** <br />
> The response provides more information than just the access token, for example, your app can get a refresh token to request new access tokens without having the user to explicitly sign-in.

Your PHP app can now use the session variable `access_token` to issue authenticated requests to the Microsoft Graph API.

<!--<a name="request"/>-->
## Use the access token in a request to the Microsoft Graph API

With an access token, your app can make authenticated requests to the Microsoft Graph API. Your app must provide the access token in the **Authorization** header of each request.

The Connect sample sends an email using the **sendMail** endpoint in the Microsoft Graph API. The code is in the [`MailManager.sendWelcomeMail`](https://github.com/microsoftgraph/php-connect-rest-sample/blob/master/src/MailManager.php#L40) function. This is the code that shows how to send the access code in the Authorization header.

```php
// Send the email request to the sendmail endpoint, 
// which is in the following URI:
// https://graph.microsoft.com/v1.0/me/microsoft.graph.sendMail
// Note that the access token is attached in the Authorization header
RequestManager::sendPostRequest(
    Constants::RESOURCE_ID . Constants::SENDMAIL_ENDPOINT,
    array(
        'Authorization: Bearer ' . $_SESSION['access_token'],
        'Content-Type: application/json;' . 
                      'odata.metadata=minimal;' .
                      'odata.streaming=true'
    ),
    $email
);
```

> **Note:** <br />
> The request must also send a **Content-Type** header with a value accepted by the Microsoft Graph API, for example, `application/json;odata.metadata=minimal;odata.streaming=true`.

The Microsoft Graph API is a very powerful, unifiying API that can be used to interact with all kinds of Microsoft data. Check out the API reference to explore what else you can accomplish with the Microsoft Graph API.

<!--## Additional resources

-  [Office 365 PHP Connect sample using Microsoft Graph API](https://github.com/OfficeDev/O365-PHP-Unified-API-Connect)-->
