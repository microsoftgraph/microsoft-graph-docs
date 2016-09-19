# Get started with Microsoft Graph in a Node.js app

This article describes the tasks required to get an access token from the v2.0 authentication endpoint and call Microsoft Graph. It walks you through building the [Microsoft Connect Sample for Node.js](https://github.com/microsoftgraph/nodejs-connect-rest-sample) and explains the main concepts that you implement to use Microsoft Graph. The article describes how to access the Microsoft Graph API by using raw REST calls.

The following image shows is the app you'll create. 

![The web app after login showing the "Send mail" button](./images/web-screenshot.png)


**Don't feel like building an app?** Use the [Microsoft Graph quick start](https://graph.microsoft.io/en-us/getting-started) to get up and running fast.


## Prerequisites

To get started, you'll need: 

- A [Microsoft account](https://www.outlook.com/) or an [Office 365 for business account](http://dev.office.com/devprogram) to register the app
- [Node.js with npm](https://nodejs.org/en/download/) 
- The [Microsoft Connect Sample for Node.js](https://github.com/microsoftgraph/nodejs-connect-rest-sample). You'll use the **starter-project** folder in the sample files for this walkthrough.

## Register the application
Register an app on the Microsoft App Registration Portal. This generates the app ID and password that you'll use to configure the app in Visual Studio.

1. Sign into the [Microsoft App Registration Portal](https://apps.dev.microsoft.com/) using either your personal or work or school account.

2. Choose **Add an app**.

3. Enter a name for the app, and choose **Create application**. 
	
   The registration page displays, listing the properties of your app.

4. Copy the application ID. This is the unique identifier for your app. 

5. Under **Application Secrets**, choose **Generate New Password**. Copy the password from the **New password generated** dialog.

   You'll use the application ID and application password (secret) to configure the app. 

6. Under **Platforms**, choose **Add platform** > **Web**.

7. Enter *http://localhost:3000/login* as the Redirect URI. 

8. Choose **Save**.


## Configure the project
1. Open the **starter-project** folder in the sample files.

1. In a command prompt, run the following command in the root directory of the starter project. This installs the project dependencies.

  ```
    npm install
  ```

1. In the starter project files, open authHelper.js.


1. In the **credentials** field, replace the **ENTER_YOUR_CLIENT_ID** and **ENTER_YOUR_SECRET** placeholder values with the values you just copied.

  
## Authenticate the user and get an access token
In this step, you'll add sign-in and token management code. But first, let's take a closer look at the auth flow.

This app uses the authorization code grant flow with a delegated user identity. For a web application, the flow requires the application ID, secret, and redirect URI from the registered app. 

The auth flow can be broken down into these basic steps:

1. Redirect the user for authentication and consent
2. Get an authorization code
3. Redeem the authorization code for an access token
4. Use the refresh token to get a new access token when the access token expires

The app uses the [oauth](https://www.npmjs.com/package/oauth) middleware to authenticate and obtain tokens. It uses the [cookie-parser](https://www.npmjs.com/package/cookie-parser) middleware to cache token information in cookies. The code used to store and access token information is found in the index.js controller.
    
   >**Important:** The simple authentication and token handling in this project is for sample purposes only. In a production app, you should construct a more robust way of handling authentication, including validation and secure token handling.

Now back to building the app.

1. In authHelper.js, replace the *getTokenFromCode* function with the following code. This gets an access token using an authorization code.

  ```
    function getTokenFromCode(code, callback) {
      var OAuth2 = OAuth.OAuth2;
      var oauth2 = new OAuth2(
        credentials.client_id,
        credentials.client_secret,
        credentials.authority,
        credentials.authorize_endpoint,
        credentials.token_endpoint
      );

      oauth2.getOAuthAccessToken(
        code,
        {
          grant_type: 'authorization_code',
          redirect_uri: credentials.redirect_uri,
          response_mode: 'form_post',
          nonce: uuid.v4(),
          state: 'abcd'
        },
        function (e, accessToken, refreshToken) {
          callback(e, accessToken, refreshToken);
        }
      );
    }
  ```

1. Replace the **getTokenFromRefreshToken** function with the following code. This gets an access token using a refresh token.

  ```
    function getTokenFromRefreshToken(refreshToken, callback) {
      var OAuth2 = OAuth.OAuth2;
      var oauth2 = new OAuth2(
        credentials.client_id,
        credentials.client_secret,
        credentials.authority,
        credentials.authorize_endpoint,
        credentials.token_endpoint
      );

      oauth2.getOAuthAccessToken(
        refreshToken,
        {
          grant_type: 'refresh_token',
          redirect_uri: credentials.redirect_uri,
          response_mode: 'form_post',
          nonce: uuid.v4(),
          state: 'abcd'
        },
        function (e, accessToken) {
          callback(e, accessToken);
        }
      );
    }
  ```

Now you're ready to add code to call Microsoft Graph. 

## Call Microsoft Graph
The app calls Microsoft Graph to get user information and to send an email on the user's behalf. These calls are initiated from the index.js controller in response to UI events.

1. Open requestUtil.js.

1. Replace the **getUserData** function with the following code. This configures and sends the GET request to the */me* endpoint and processes the response.

  ```
    function getUserData(accessToken, callback) {
      var options = {
        host: 'graph.microsoft.com',
        path: '/v1.0/me',
        method: 'GET',
        headers: {
          'Content-Type': 'application/json',
          Accept: 'application/json',
          Authorization: 'Bearer ' + accessToken
        }
      };

      https.get(options, function (response) {
        var body = '';
        response.on('data', function (d) {
          body += d;
        });
        response.on('end', function () {
          var error;
          if (response.statusCode === 200) {
            callback(null, JSON.parse(body));
          } else {
            error = new Error();
            error.code = response.statusCode;
            error.message = response.statusMessage;
            // The error body sometimes includes an empty space
            // before the first character, remove it or it causes an error.
            body = body.trim();
            error.innerError = JSON.parse(body).error;
            callback(error, null);
          }
        });
      }).on('error', function (e) {
        callback(e, null);
      });
    }
  ```

1. Replace the **postSendMail** function with the following code. This configures and sends the POST request to the */me/sendMail* endpoint and processes the response.

  ```
    function postSendMail(accessToken, mailBody, callback) {
      var outHeaders = {
        'Content-Type': 'application/json',
        Authorization: 'Bearer ' + accessToken,
        'Content-Length': mailBody.length
      };
      var options = {
        host: 'graph.microsoft.com',
        path: '/v1.0/me/sendMail',
        method: 'POST',
        headers: outHeaders
      };

      // Set up the request
      var post = https.request(options, function (response) {
        var body = '';
        response.on('data', function (d) {
          body += d;
        });
        response.on('end', function () {
          var error;
          if (response.statusCode === 202) {
            callback(null);
          } else {
            error = new Error();
            error.code = response.statusCode;
            error.message = response.statusMessage;
            // The error body sometimes includes an empty space
            // before the first character, remove it or it causes an error.
            body = body.trim();
            error.innerError = JSON.parse(body).error;
            // Note: If you receive a 500 - Internal Server Error
            // while using a Microsoft account (outlook.com, hotmail.com or live.com),
            // it's possible that your account has not been migrated to support this flow.
            // Check the inner error object for code 'ErrorInternalServerTransientError'.
            // You can try using a newly created Microsoft account or contact support.
            callback(error);
          }
        });
      });
      
      // write the outbound data to it
      post.write(mailBody);
      // we're done!
      post.end();

      post.on('error', function (e) {
        callback(e);
      });
    }
  ```
  
1. Open emailer.js.

1. Replace the **wrapEmail** function with the following code. This builds the payload that represents the email message to send.

  ```
    function wrapEmail(content, recipient) {
      var emailAsPayload = {
        Message: {
          Subject: 'Welcome to Office 365 development with Node.js and the Office 365 Connect sample',
          Body: {
            ContentType: 'HTML',
            Content: content
          },
          ToRecipients: [
            {
              EmailAddress: {
                Address: recipient
              }
            }
          ]
        },
        SaveToSentItems: true
      };
      return emailAsPayload;
    }
  ```

## Run the app

1. In a command prompt, run the following command in the root directory of the starter project.

  ```
    npm start
  ```

1. In a browser, navigate to *http://localhost:3000* and choose the **Connect to Office 365** button.

1. Sign in and grant the requested permissions. 

1. Optionally edit the recipient's email address, and then choose the **Send mail** button. When the mail is sent, a Success message is displayed below the button. 

## Next steps
- Try out the REST API using the [Graph explorer](https://graph.microsoft.io/graph-explorer).
- Explore our other [Node.js samples](https://github.com/search?utf8=%E2%9C%93&q=node+sample+user%3Amicrosoftgraph&type=Repositories&ref=searchresults) on GitHub.


## See also
- [Azure AD v2.0 protocols](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-protocols/)
- [Azure AD v2.0 tokens](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-tokens/)