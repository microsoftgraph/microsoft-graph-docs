# Call Microsoft Graph in an iOS App

This article describes the tasks required to get an access token from the [v2.0 authentication endpoint](https://graph.microsoft.io/en-us/docs/authorization/converged_auth) and call Microsoft Graph. It walks you through the code inside the [Office 365 Connect Sample for iOS (SDK)](https://github.com/microsoftgraph/ios-objectivec-connect-sample) to explain the main concepts that you have to implement in an app that uses Microsoft Graph. It describes how to access Microsoft Graph by using the [Microsoft Graph SDK for iOS](https://github.com/microsoftgraph/msgraph-sdk-ios).

You can download the version of the app that you'll create from this GitHub repo:

* [Office 365 Connect Sample for iOS Using the Microsoft Graph SDK](https://github.com/microsoftgraph/ios-objectivec-connect-sample)

The following image shows the app you'll create.

![Connect sample walkthrough, shows connecting and sending a mail in the app](https://github.com/OfficeDev/microsoft-graph-docs/blob/ignite-walkthroughs/content/walkthroughs/consumer/images/iOSConnectWalkthrough.png)


The workflow will be to connect/authenticate to Microsoft Graph, sign in with your work or personal account, and finally send a mail to a recipient.

**Don't feel like building an app?** Use the [Microsoft Graph quick start](https://graph.microsoft.io/en-us/getting-started) to get up and running fast.

## Prerequisites

To get started, you'll need: 

* [Xcode](https://developer.apple.com/xcode/downloads/) from Apple
* Installation of [CocoaPods](https://guides.cocoapods.org/using/using-cocoapods.html) as a dependency manager
* A [Microsoft account](https://www.outlook.com/) or an [Office 365 for business account](https://msdn.microsoft.com/en-us/office/office365/howto/setup-development-environment#bk_Office365Account)
* The [Microsoft Graph Starter Project for iOS](https://github.com/microsoftgraph/ios-objectivec-connect-sample). This template contains classes that you'll add code to. To get this project, clone or download the sample project from this location, and you'll work with the workspace inside the **starter-project** folder (**O365-iOS-Microsoft-Graph-SDK.xcworkspace**).

## Register the app
 
1. Sign into the [App Registration Portal](https://apps.dev.microsoft.com/) using either your personal or work or school account.
2. Select **Add an app**.
3. Enter a name for the app, and select **Create application**.
	
	The registration page displays, listing the properties of your app.
 
4. Under **Platforms**, select **Add platform**.
5. Select **Mobile platform**.
6. Copy the Client Id to the clipboard. You'll need to enter this value into the sample app.

	The app id is a unique identifier for your app. 

7. Select **Save**.

## Importing the project dependencies

1. Clone this repository, [Office 365 Connect Sample for iOS Using the Microsoft Graph SDK](https://github.com/microsoftgraph/ios-objectivec-connect-sample). **Remember you will use the sample in the starter-project folder and not the sample at the root of the project.**
2. Use CocoaPods to import the Microsoft Graph SDK and authentication dependencies. This sample app already contains a podfile that will get the pods into the project. Navigate to the folder **starter-project** in the **Terminal** app, and from **Terminal** run:

        pod install

   You will receive confirmation that the pods have been imported into the project. For more information, see [CocoaPods](https://guides.cocoapods.org/using/using-cocoapods.html)


## Authenticating with Microsoft Graph

To revisit the UI workflow, the app is going to have the user authenticate, and then they'll have the ability to send a mail to a specified user. To make requests against the Microsoft Graph service, an authentication provider must be supplied which is capable of authenticating HTTPS requests with an appropriate OAuth 2.0 bearer token. In the sample project there's an authentication class already stubbed out called **AuthenticationProvider.m.** We will add a function to request, and acquire, an access token for calling the Microsoft Graph API. 

1. Open the Xcode project workspace (**O365-iOS-Microsoft-Graph-SDK.xcworkspace**) in the **starter-project** folder, and navigate to the **Authentication** folder and open the file **AuthenticationProvider.m.** Add the following code to that class.

		-(void) connectToGraphWithClientId:(NSString *)clientId scopes:(NSArray *)scopes completion:(void (^)	(NSError *))completion{
    		[NXOAuth2AuthenticationProvider setClientId:kClientId
                                              scopes:scopes];
    
    
    		/**
     		Obtains access token by performing login with UI, where viewController specifies the parent view controller.
     		@param viewController The view controller to present the UI on.
    		 @param completionHandler The completion handler to be called when the authentication has completed.
     		error should be non nil if there was no error, and should contain any error(s) that occurred.
    		 */

    			if ([[NXOAuth2AuthenticationProvider sharedAuthProvider] loginSilent]) {
        		completion(nil);
    			}
    			else {
        			[[NXOAuth2AuthenticationProvider sharedAuthProvider] loginWithViewController:nil completion:^(NSError *error) {
            		if (!error) {
                	NSLog(@"Authentication successful.");
                	completion(nil);
            		}
           		 else {
               		 NSLog(@"Authentication failed - %@", error.localizedDescription);
                	completion(error);
            		}
       	 		}];
    		}
    
		}

2. Next add the method to the header file. Open the file **AuthenticationProvider.h** and add the following code to this class.

		-(void) connectToGraphWithClientId:(NSString *)clientId
                            scopes:(NSArray *)scopes
                        completion:(void (^)(NSError *error))completion;



2. Finally we'll call this method from **ConnectViewController.m**. This controller is the default view that the app loads, and there is a single button named **Connect** that the user will tap that will initiate the authentication process. This method takes in two parameters, the **Client ID** and **scopes**, we'll discuss these in more detail below. Add the following action to **ConnectViewController.m**.

		- (IBAction)connectTapped:(id)sender {
			[self showLoadingUI:YES];   
			NSArray *scopes = [kScopes componentsSeparatedByString:@","];
			[self.authProvider connectToGraphWithClientId:kClientId scopes:scopes completion:^(NSError *error) {
				if (!error) {
					[self performSegueWithIdentifier:@"showSendMail" sender:nil];
					[self showLoadingUI:NO];
					NSLog(@"Authentication successful.");
					}
				else{
					NSLog(NSLocalizedString(@"CHECK_LOG_ERROR", error.localizedDescription));
					[self showLoadingUI:NO];
					};
				}];
		}

## Send an email with Microsoft Graph

After configuring the project to be able to authenticate, the next tasks are sending a mail to a user using the Microsoft Graph API. By default the logged in user will be the recipient, but you have the ability to change it to any other recipient. The code we'll work with here is located in the **Controllers** folder and in the class **SendMailViewController.m.** You'll see that there is other code represented here for the UI, and a helper method to retrieve user profile information from the Microsoft Graph service. We'll concentrate on the methods for creating a mail message and sending that message.

1. Open **SendMailViewController.m.** in the Controllers folder and add the following helper method to the class:

		// Create a sample test message to send to specified user account
		-(MSGraphMessage*) getSampleMessage{
    		MSGraphMessage *message = [[MSGraphMessage alloc]init];
    		MSGraphRecipient *toRecipient = [[MSGraphRecipient alloc]init];
    		MSGraphEmailAddress *email = [[MSGraphEmailAddress alloc]init];
    
    		email.address = self.emailAddress;
    		toRecipient.emailAddress = email;
    
    		NSMutableArray *toRecipients = [[NSMutableArray alloc]init];
    		[toRecipients addObject:toRecipient];
    
    		message.subject = NSLocalizedString(@"MAIL_SUBJECT", comment: "");
    
    		MSGraphItemBody *emailBody = [[MSGraphItemBody alloc]init];
    		NSString *htmlContentPath = [[NSBundle mainBundle] pathForResource:@"EmailBody" ofType:@"html"];
    		NSString *htmlContentString = [NSString stringWithContentsOfFile:htmlContentPath encoding:NSUTF8StringEncoding error:nil];
    
    		emailBody.content = htmlContentString;
    		emailBody.contentType = [MSGraphBodyType html];
    		message.body = emailBody;
    
    		message.toRecipients = toRecipients;
    
    		return message;
    
		}


2. Open **SendMailViewController.m.** Add the following send mail method to the class.  

		//Send mail to the specified user in the email text field
		-(void) sendMail {   
    		MSGraphMessage *message = [self getSampleMessage];
    		MSGraphUserSendMailRequestBuilder *requestBuilder = [[self.graphClient me]sendMailWithMessage:message saveToSentItems:true];
    		NSLog(@"%@", requestBuilder);
    		MSGraphUserSendMailRequest *mailRequest = [requestBuilder request];
    		[mailRequest executeWithCompletion:^(NSDictionary *response, NSError *error) {
        		if(!error){
            		NSLog(@"response %@", response);
            		NSLog(NSLocalizedString(@"ERROR", ""), error.localizedDescription);
            
            		dispatch_async(dispatch_get_main_queue(), ^{
                		self.statusTextView.text = NSLocalizedString(@"SEND_SUCCESS", comment: "");
            	});
        	}
        	else {
            	NSLog(NSLocalizedString(@"ERROR", ""), error.localizedDescription);
           	 	self.statusTextView.text = NSLocalizedString(@"SEND_FAILURE", comment: "");
        		}
    		}];
    
		}

So **getSampleMessage** creates a draft HTML sample mail to use for demo purposes. The next method, **sendMail**, then takes that message and executes the request to send it. Again the default recipient is the signed-in user.


## Run the app
1. Before running the sample you'll need to supply the client ID you received from the registration process in the section **Register the app.** Open **AuthenticationConstants.m** under the **Application** folder. You'll see that the ClientID from the registration process can be added to the top of the file.:  

		// You will set your application's clientId
		NSString * const kClientId    = @"ENTER_CLIENT_ID_HERE";
		NSString * const kScopes = @"https://graph.microsoft.com/Mail.Send, https://graph.microsoft.com/User.Read, offline_access";
Note: You'll notice that the following permission scopes have been configured for this project: **"https://graph.microsoft.com/Mail.Send", "https://graph.microsoft.com/User.Read", "offline_access"**. The service calls used in this project, sending a mail to your mail account and retrieving some profile information (Display Name, Email Address) require these permissions for the app to run properly.

2. Run the sample, tap **Connect,** sign in with your personal or work or school account, and grant the requested permissions.

3. Choose the **Send email** button. When the mail is sent, a success message is displayed below the button.

## Next steps
- Try out the REST API using the [Graph explorer](https://graph.microsoft.io/graph-explorer).
- Find examples of common operations for both REST and SDK operations in the [Microsoft Graph iOS Objective C Snippets Sample](https://github.com/microsoftgraph/ios-objectiveC-snippets-sample).

## See also
- [Azure AD v2.0 protocols](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-protocols/)
- [Azure AD v2.0 tokens](https://azure.microsoft.com/en-us/documentation/articles/active-directory-v2-tokens/)
