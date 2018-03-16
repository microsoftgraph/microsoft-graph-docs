# Get started with Microsoft Graph in an AngularJS app

This article describes the tasks required to get an access token from the Azure AD v2.0 endpoint and call Microsoft Graph. It walks you through building the [Microsoft Connect Sample for AngularJS](https://github.com/microsoftgraph/angular-connect-rest-sample) and explains the main concepts that you implement to use Microsoft Graph. The article also describes how to access Microsoft Graph by using either the [Microsoft Graph JavaScript SDK](https://github.com/microsoftgraph/msgraph-sdk-javascript) or raw REST calls.

The following image shows the app you'll create. 

![The web app after login showing the "Send mail" button](./images/angular-connect-sample.png)


**Don't feel like building an app?** Use the [Microsoft Graph quick start](https://graph.microsoft.io/en-us/getting-started) to get up and running fast.

To download a version of the Connect sample that uses the Azure AD endpoint, see [Microsoft Graph Connect Sample for AngularJS](https://github.com/microsoftgraph/angular-connect-rest-sample/releases/tag/last_v1_auth).


## Prerequisites

To get started, you'll need: 

- A [Microsoft account](https://www.outlook.com/) or a [work or school account](https://developer.microsoft.com/en-us/office/dev-program)
- [Node.js with npm](https://nodejs.org/en/download/)
- [Bower](https://bower.io)
- The [Microsoft Connect Sample for AngularJS](https://github.com/microsoftgraph/angular-connect-sample). You'll use the **starter-project** folder in the sample files for this walkthrough.

## Register the application
Register an app on the Microsoft App Registration Portal. This generates the app ID and password that you'll use to configure the app in Visual Studio.

1. Sign into the [Microsoft App Registration Portal](https://apps.dev.microsoft.com/) using either your personal or work or school account.

2. Choose **Add an app**.

3. Enter a name for the app, and choose **Create application**. 
	
	The registration page displays, listing the properties of your app.

4. Copy the application ID. This is the unique identifier for your app that you'll use to configure the app.

5. Under **Platforms**, choose **Add Platform** > **Web**.

6. Make sure the **Allow Implicit Flow** check box is selected, and enter *http://localhost:8080* as the Redirect URI. 

7. Choose **Save**.


## Configure the project
1. Open the **starter-project** folder in the sample files.
2. In a command prompt, run the following commands in the root directory of the starter project. This installs the project dependencies.

        npm install  
        bower install
    
3. In the starter project files, in the **public/scripts** folder, open config.js.
4. In the **clientID** field, replace the **ENTER_YOUR_CLIENT_ID** placeholder value with the application ID you just copied.

## Call Microsoft Graph with the SDK
The app calls Microsoft Graph to get user information and to send an email on the user's behalf. These calls are initiated from the MainController in response to UI events.

Open app.js and add the following code to the bottom of the file. This initializes the SDK.

	var authToken;
	var graphClient = MicrosoftGraph.Client.init({
	    authProvider: function(done) {
		if (typeof authToken === "undefined") {
		  done({err: "No auth token"})
		} else {
		  done(null, authToken); //first parameter takes an error if you can't get an access token
		}
	    }
	});

### Using the SDK
1. In graphHelper.js, replace *// Get the profile of the current user* with the following code. This configures and sends the GET request to the */me* endpoint, and processes the response.

        // Get the profile of the current user.
        me: function me() {
          return graphClient.api('/me').get();
        },
  
2. Replace *// Send an email on behalf of the current user* with the following code. This configures and sends the POST request to the */me/sendMail* endpoint, and processes the response.

        // Send an email on behalf of the current user.
        sendMail: function sendMail(email) {
          return graphClient.api('/me/sendMail').post({ 'message' : email, 'saveToSentItems': true });
        }

3. In the **public/controllers** folder, open mainController.js.

4. Replace *// Set the default headers and user properties* with the following code. This adds the access token to the HTTP request, calls **GraphHelper.me** to get the current user's profile, and processes the response.

        // Set the default headers and user properties.
	    function processAuth() {

		// let the authProvider access the access token
		authToken = localStorage.token;

		if (localStorage.getItem('user') === null) {

		  // Get the profile of the current user.
		  GraphHelper.me().then(function(user) {

		    // Save the user to localStorage.
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

5. Replace *// Send an email on behalf of the current user* with the following code. This builds the email message, calls **GraphHelper.sendMail**, and processes the response.

        // Send an email on behalf of the current user.
	    function sendMail() {

	      authToken = localStorage.token;       

	      // Build the HTTP request payload (the Message object).
	      var email = {
		  Subject: 'Welcome to Microsoft Graph development with Angular and the Microsoft Graph Connect sample',
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
		  vm.requestSuccess = true;
		  vm.requestFinished = true;
		  $scope.$apply();
		}, function (error) {
		  $log.error('HTTP request to the Microsoft Graph API failed.');
		  vm.requestSuccess = false;
		  vm.requestFinished = true;
		  $scope.$apply();
		});

	    };

6. Save all your changes.

## Run the app

1. In a command prompt, run the following command in the root directory of the starter project.

        npm start

2. In a browser, navigate to *http://localhost:8080* and choose the **Connect** button.

3. Sign in and grant the requested permissions. 

4. Optionally edit the recipient's email address, and then choose the **Send mail** button. When the mail is sent, a Success message is displayed below the button. 

## Next steps
- Try out the REST API using the [Graph explorer](https://developer.microsoft.com/graph/graph-explorer).
- Explore our other [AngularJS samples](https://github.com/search?utf8=%E2%9C%93&q=angular+sample+user%3Amicrosoftgraph&type=Repositories&ref=searchresults) on GitHub.


## See also
- [Azure AD v2.0 protocols](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-protocols/)
- [Azure AD v2.0 tokens](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-tokens/)
- [Office 365 Developer Program setup docs](https://docs.microsoft.com/en-us/office/developer-program/office-365-developer-program)