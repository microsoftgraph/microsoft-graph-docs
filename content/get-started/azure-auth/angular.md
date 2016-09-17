# Call Microsoft Graph in an Angular app 

In this article we look at the minimum tasks required to connect your application to Office 365 and call the Microsoft Graph API. We use code from the [Office 365 Angular Connect sample using Microsoft Graph](https://github.com/microsoftgraph/angular-connect-rest-sample) to explain the main concepts that you have to implement in your app.

![Office 365 Angular Connect sample screenshot](./images/web-screenshot.png)

## Prerequisites  

This topic assumes the following.

* You are comfortable reading JavaScript and [AngularJS](https://angularjs.org/) code.

## Overview

To call the Microsoft Graph API, you have to complete the following tasks.

1. Register the application in Azure Active Directory
2. Configure Azure Active Directory Library for JavaScript (ADAL JS)
3. Use ADAL JS to get an access token
4. Use the access token in a request to the Microsoft Graph API

<!--<a name="register"></a>-->
## Register the application in Azure Active Directory

Before you can start working with Office 365, you need to register your application and set permissions to use Microsoft Graph services.
With just a few clicks, you can register your application to access a user's work or school account using the [Application Registration Tool](https://dev.office.com/app-registration). To manage it you will need to go to the [Microsoft Azure Management portal](https://manage.windowsazure.com)

Alternatively, see the article [Register your brower-based web app with the Azure Management Portal](https://msdn.microsoft.com/en-us/office/office365/HowTo/add-common-consent-manually#bk_RegisterWebApp) for instructions on how to manually register the app, keep in mind the following details:

* Make sure to specify http://127.0.0.1:8080/ as the **Sign-on URL**.
* After you register the application, [configure the **Delegated permissions**](https://github.com/microsoftgraph/angular-connect-rest-sample/wiki/Grant-permissions-to-the-Connect-application-in-Azure) that your Angular app requires. The Connect sample requires the **Send mail as signed-in user** permission.

Take note of the following values in the **Configure** page of your Azure application because you need these values to configure [ADAL JS](https://github.com/AzureAD/azure-activedirectory-library-for-js) in your Angular app.

* Client ID (unique to your application)
* A reply URL (http://127.0.0.1:8080/)

<!--<a name="adal"></a>-->
## Configure Azure Active Directory Library for JavaScript (ADAL JS)

[ADAL JS](https://github.com/AzureAD/azure-activedirectory-library-for-js) is a JavaScript library which provides you with complete support for signing on Azure AD users in single-page applications (SPAs) like the Connect sample and token management, as well as other features. In order to leverage this library, your Angular app has to include and configure it.

Simply include the library and its Angular-specific module using the Microsoft CDN.

```html
<script src="https://secure.aadcdn.microsoftonline-p.com/lib/1.0.7/js/adal.min.js"></script>
<script src="https://secure.aadcdn.microsoftonline-p.com/lib/1.0.7/js/adal-angular.min.js"></script>
```

Next, you have to configure the ADAL JS service wherever you configure your Angular app's dependencies. The Connect sample does its configuration in [*public/app.js*](https://github.com/microsoftgraph/angular-connect-rest-sample/blob/master/public/scripts/app.js). 

To configure ADAL JS, first include a reference to the ADAL module by adding ```AdalAngular``` to your module's require array and pass ```adalAuthenticationServiceProvider``` into your ```config``` function. Configure the library with the ```init``` function, passing it your application's client ID and an ```endpoints``` object that declares which APIs your Angular app needs to make CORS requests to.

```javascript
// Initialize the ADAL provider with your clientID (found in the Azure Management Portal) and 
// the API URL (to enable CORS requests).
adalAuthenticationServiceProvider.init(
  {
    clientId: clientId,
    // The endpoints here are resources for cross origin requests.
    endpoints: {
      'https://graph.microsoft.com': 'https://graph.microsoft.com'
    }
  },
  $httpProvider
);
```

<!--<a name="accessToken"></a>-->
## Use ADAL JS to get an access token

Your app needs to redirect the browser to a sign in page so the user can sign in and grant your application access to their data. The Connect sample utilizes ADAL JS to handle this task. 

In one of your application's controllers, first add a reference to the ADAL service by injecting ```adalAuthenticationService``` into your controller and then define a function that uses the service's ```login``` function that your UI can call. The Connect sample does this in the [*controllers/mainController.js*](https://github.com/microsoftgraph/angular-connect-rest-sample/blob/master/public/controllers/mainController.js) file. 

```javascript
/**
  * Expose the login method from ADAL to the view.
  */
function connect() {
  adalAuthenticationService.login();
};
```

When this function is called, your application will redirect the user to a sign in page. After they sign in and authorize your app, they'll be returned to your app with the access token in the query string that ADAL JS will retrieve and store. 

<!--<a name="request"></a>-->
## Use the access token in a request to the Microsoft Graph API

With an access token, your app can make authenticated requests to the Microsoft Graph API. ADAL JS automatically intercepts all HTTP requests and adds your access token to them so you don't have to manually set that header when using the library. 

The Connect sample sends an email using the ```me/sendMail``` endpoint in the Microsoft Graph API in the [*controllers/mainController.js*](https://github.com/microsoftgraph/angular-connect-rest-sample/blob/master/public/controllers/mainController.js) file. 

The Microsoft Graph is a very powerful, unifiying API that can be used to interact with all kinds of Microsoft data. Check out the [API reference](http://graph.microsoft.io/docs/api-reference/v1.0) to explore what else you can accomplish with the Microsoft Graph API.

