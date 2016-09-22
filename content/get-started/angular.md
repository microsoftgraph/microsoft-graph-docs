# Get started with Microsoft Graph in an AngularJS app

This article describes the tasks required to get an access token from the Azure AD v2.0 endpoint and call Microsoft Graph. It walks you through building the [Microsoft Connect Sample for AngularJS](https://github.com/microsoftgraph/angular-connect-rest-sample) and explains the main concepts that you implement to use Microsoft Graph. The article describes how to access the Microsoft Graph API by using raw REST calls.

The following image shows the app you'll create. 

![The web app after login showing the "Send mail" button](./images/angular-connect-sample.png)


**Don't feel like building an app?** Use the [Microsoft Graph quick start](https://graph.microsoft.io/en-us/getting-started) to get up and running fast.

To download a version of the Connect sample that uses the Azure AD endpoint, see [Microsoft Graph Connect Sample for AngularJS](https://github.com/microsoftgraph/angular-connect-rest-sample/releases/tag/last_v1_auth).


## Prerequisites

To get started, you'll need: 

- A [Microsoft account](https://www.outlook.com/) or a [work or school account](http://dev.office.com/devprogram)
- [Node.js with npm](https://nodejs.org/en/download/)
- [Bower](https://bower.io)
- The [Microsoft Connect Sample for AngularJS](https://github.com/microsoftgraph/angular-connect-rest-sample). You'll use the **starter-project** folder in the sample files for this walkthrough.

## Register the application
Register an app on the Microsoft App Registration Portal. This generates the app ID and password that you'll use to configure the app in Visual Studio.

1. Sign into the [Microsoft App Registration Portal](https://apps.dev.microsoft.com/) using either your personal or work or school account.

2. Choose **Add an app**.

3. Enter a name for the app, and choose **Create application**. 
	
   The registration page displays, listing the properties of your app.

4. Copy the application ID. This is the unique identifier for your app that you'll use to configure the app.

5. Under **Platforms**, choose **Add Platform** > **Web**.

7. Make sure the **Allow Implicit Flow** check box is selected, and enter *http://localhost:8080/login* as the Redirect URI. 

8. Choose **Save**.


## Configure the project
1. Open the **starter-project** folder in the sample files.
2. In a command prompt, run the following commands in the root directory of the starter project. This installs the project dependencies.

	  ```
	    npm install
        bower install hello
	  ```

3. In the starter project files, in the **public/scripts** folder, open config.js.
4. In the **clientId** field, replace the **ENTER_YOUR_CLIENT_ID** placeholder value with the application ID you just copied.

  
## Authenticate the user and get an access token
In this step, you'll add sign-in and token retrieval code. But first, let's take a closer look at the auth flow.

This single page application uses a very basic implementation of the implicit grant flow, which requires the application ID and redirect URI from the registered app. 

The auth flow can be broken down into these basic steps:

1. Redirect the user for authentication and consent.
2. Get an access token.

The app uses the [HelloJS](https://adodson.com/hello.js) client-side library to authenticate and obtain tokens. The app stores the access token in local storage.
    
   >**Important:** The simple authentication and token handling in this project is for sample purposes only. In a production app, you should construct a more robust way of handling authentication, including validation and secure token handling.

Now back to building the app.

1. Open aad.js and add the following code. This configures communication with the Azure AD auth provider, and adds a listener that stores the auth response that contains the access token. (The script references to HelloJS are already added to the index.html view.)

  ```
  hello.init({

      aad: {
          name: 'Azure Active Directory',	
          oauth: {
              version: 2,
              auth: 'https://login.microsoftonline.com/common/oauth2/v2.0/authorize',
              grant: 'https://login.microsoftonline.com/common/oauth2/v2.0/token'
          },
          scope_delim: ' ',


          // Don't even try submitting via form.
          // This means no POST operations in <=IE9
          form: false
      }
  });

  hello.on('auth.login', function (auth) {

    // save the auth info into localStorage
    localStorage.auth = angular.toJson(auth.authResponse);
  });
  ```

1. In graphHelper.js, replace *// Initialize the auth request* with the following code. This sets parameters for the auth request.

  ```
  // Initialize the auth request.
  hello.init( {
    aad: clientId // from public/scripts/config.js
    }, {
    redirect_uri: redirectUrl,
    scope: graphScopes
  });
  ```

1. Replace *// Sign in and sign out the user* with the following code. The **login** function uses HelloJS to get token information. The listener in aad.js stores this information--including the access token--in local storage.

  ```
  // Sign in and sign out the user.
  login: function login() {
    hello('aad').login({
      display: 'page',
      state: 'abcd'
    });
  },
  logout: function logout() {
    hello('aad').logout();
    delete localStorage.auth;
    delete localStorage.user;
  },
  ```

Now you're ready to add code to call Microsoft Graph. 

## Call Microsoft Graph
The app calls Microsoft Graph to get user information and to send an email on the user's behalf. These calls are initiated from the MainController in response to UI events.

1. In graphHelper.js, replace *// Get the profile of the current user* with the following code. This configures and sends the GET request to the */me* endpoint, and processes the response.

  ```
  // Get the profile of the current user.
  me: function me() {
    return $http.get('https://graph.microsoft.com/v1.0/me');
  },
  ```
  
1. Replace *// Send an email on behalf of the current user* with the following code. This configures and sends the POST request to the */me/sendMail* endpoint, and processes the response.

  ```
  // Send an email on behalf of the current user.
  sendMail: function sendMail(email) {
    return $http.post('https://graph.microsoft.com/v1.0/me/sendMail', { 'message' : email, 'saveToSentItems': true });        
  }
  ```

1. In the **public/controllers** folder, open mainController.js.

1. Replace *// Set the default headers and user properties* with the following code. This adds the access token to the HTTP request, calls **GraphHelper.me** to get the current user's profile, and processes the response.

  ```
  // Set the default headers and user properties.
  function processAuth() {
      let auth = angular.fromJson(localStorage.auth); 

      // Check token expiry. If the token is valid for another 5 minutes, we'll use it.       
      let expiration = new Date();
      expiration.setTime((auth.expires - 300) * 1000); 
      if (expiration > new Date()) {

        // Add the required Authorization header with bearer token.
        $http.defaults.headers.common.Authorization = 'Bearer ' + auth.access_token;

        // This header has been added to identify our sample in the Microsoft Graph service. If extracting this code for your project please remove.
        $http.defaults.headers.common.SampleID = 'angular-connect-rest-starter';

        if (localStorage.getItem('user') === null) {

          // Get the profile of the current user.
          GraphHelper.me().then(function(response) {

            // Save the user to localStorage.
            let user =response.data;
            localStorage.setItem('user', angular.toJson(user));

            vm.displayName = user.displayName;
            vm.emailAddress = user.mail || user.userPrincipalName;
          });
        } else {
          let user = angular.fromJson(localStorage.user);

          vm.displayName = user.displayName;
          vm.emailAddress = user.mail || user.userPrincipalName;
        }
     }
  } 
  ```
  

1. Replace *// Send an email on behalf of the current user* with the following code. This builds the email message, calls **GraphHelper.sendMail**, and processes the response.

  ```
  // Send an email on behalf of the current user.
  function sendMail() {

    // Check token expiry. If the token is valid for another 5 minutes, we'll use it.
    let auth = angular.fromJson(localStorage.auth);       
    let expiration = new Date();
    expiration.setTime((auth.expires - 300) * 1000); 
    if (expiration > new Date()) {

      // Build the HTTP request payload (the Message object).
      var email = {
          Subject: 'Welcome to Microsoft Graph development with AngularJS and the Microsoft Graph Connect sample',
          Body: {
            ContentType: 'HTML',
            Content: getEmailContent()
          },
          ToRecipients: [
            {
              EmailAddress: {
                Address: vm.emailAddress
              }
            }
          ]
      };

      // Save email address so it doesn't get lost with two way data binding.
      vm.emailAddressSent = vm.emailAddress;

      GraphHelper.sendMail(email)
        .then(function (response) {
          $log.debug('HTTP request to the Microsoft Graph API returned successfully.', response);
          response.status === 202 ? vm.requestSuccess = true : vm.requestSuccess = false;
          vm.requestFinished = true;
        }, function (error) {
          $log.error('HTTP request to the Microsoft Graph API failed.');
          vm.requestSuccess = false;
          vm.requestFinished = true;
        });
     } else {

       // If the token is expired, this sample just redirects the user to sign in.
       GraphHelper.login();
     }
  };

  // Get the HTMl for the email to send.
  function getEmailContent() {
    return "<html><head> <meta http-equiv=\'Content-Type\' content=\'text/html; charset=us-ascii\'> <title></title> </head><body style=\'font-family:calibri\'> <p>Congratulations " + vm.displayName + ",</p> <p>This is a message from the Microsoft Graph Connect sample. You are well on your way to incorporating Microsoft Graph endpoints in your apps. </p> <h3>What&#8217;s next?</h3><ul><li>Check out <a href='https://graph.microsoft.io' target='_blank'>graph.microsoft.io</a> to start building Microsoft Graph apps today with all the latest tools, templates, and guidance to get started quickly.</li><li>Use the <a href='https://graph.microsoft.io/graph-explorer' target='_blank'>Graph explorer</a> to explore the rest of the APIs and start your testing.</li><li>Browse other <a href='https://github.com/microsoftgraph/' target='_blank'>samples on GitHub</a> to see more of the APIs in action.</li></ul> <h3>Give us feedback</h3> <ul><li>If you have any trouble running this sample, please <a href='https://github.com/microsoftgraph/angular-connect-rest-sample/issues' target='_blank'>log an issue</a>.</li><li>For general questions about the Microsoft Graph API, post to <a href='https://stackoverflow.com/questions/tagged/microsoftgraph?sort=newest' target='blank'>Stack Overflow</a>. Make sure that your questions or comments are tagged with [microsoftgraph].</li></ul><p>Thanks and happy coding!<br>Your Microsoft Graph samples development team</p> <div style=\'text-align:center; font-family:calibri\'> <table style=\'width:100%; font-family:calibri\'> <tbody> <tr> <td><a href=\'https://github.com/microsoftgraph/angular-connect-rest-sample\'>See on GitHub</a> </td> <td><a href=\'https://officespdev.uservoice.com/\'>Suggest on UserVoice</a> </td> <td><a href=\'https://twitter.com/share?text=I%20just%20started%20developing%20%23Angular%20apps%20using%20the%20%23MicrosoftGraph%20Connect%20sample!%20&url=https://github.com/microsoftgraph/angular-connect-rest-sample\'>Share on Twitter</a> </td> </tr> </tbody> </table> </div>  </body> </html>";
  };
  ```

1. Save all your changes.

## Run the app

1. In a command prompt, run the following command in the root directory of the starter project.

  ```
    npm start
  ```

1. In a browser, navigate to *http://localhost:8080* and choose the **Connect** button.

1. Sign in and grant the requested permissions. 

1. Optionally edit the recipient's email address, and then choose the **Send mail** button. When the mail is sent, a Success message is displayed below the button. 

## Next steps
- Try out the REST API using the [Graph explorer](https://graph.microsoft.io/graph-explorer).
- Explore our other [AngularJS samples](https://github.com/search?utf8=%E2%9C%93&q=angular+sample+user%3Amicrosoftgraph&type=Repositories&ref=searchresults) on GitHub.


## See also
- [Azure AD v2.0 protocols](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-protocols/)
- [Azure AD v2.0 tokens](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-tokens/)