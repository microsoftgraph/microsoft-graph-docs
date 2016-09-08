# Call Microsoft Graph in an iOS App

In this article we look at the minimum tasks required to connect your application to Office 365 and calling the Microsoft Graph API. We use code from the [ios-objectivec-connect-rest-sample](https://github.com/microsoftgraph/ios-objectivec-connect-rest-sample) to explain the main concepts that you have to implement in your app. This samples covers the core fundamentals for authenticating with Microsoft Azure Active Directory (AAD), and making a simple service call against the Office 365 mail service using the Microsoft Graph API (sending a mail). It's recommended that you clone or download the project from this repository to accompany this article. 


This article references the [Microsoft Azure Active Directory Authentication Library (ADAL) for iOS and OSX](https://github.com/AzureAD/azure-activedirectory-library-for-objc), and the [ios-objectivec-connect-rest-sample](https://github.com/microsoftgraph/ios-objectivec-connect-rest-sample) sample authenticates using this library. See this repository for more information on usage and implementation in your iOS project.


## Overview

To call the Microsoft Graph API, your iOS app must complete the following:

1. Register the application from Microsoft Azure Active Directory (AD).
2. Request and acquire an access token from Azure AD.
3. Use the access token in a REST request to the Microsoft Graph API. 



## Register the application in Azure Active Directory

Before you can start working with Office 365, you need to register your application and set permissions to use Microsoft Graph services.
With just a few clicks, you can register your application to access a user's work or school account using the [Application Registration Tool](https://dev.office.com/app-registration). To manage it you will need to go to the [Microsoft Azure Management portal](https://manage.windowsazure.com)

Alternatively, see the section **Register your native app with the Azure Management Portal** in the article [Manually register your app with Azure AD so it can access Office 365 APIs](https://msdn.microsoft.com/en-us/office/office365/howto/add-common-consent-manually) for instructions on how to manually register the app, keep in mind the following details:

* For the registration you'll need to supply a redirect URI. This a required value that specifies where a user will be redirected after a successful authentication attempt. If you don't specify the correct redirect URI, the authentication request will fail.
* In the registration, the app must be granted the **Send mail as signed-in user permission** for the **Microsoft Graph**.  


Take note of the following values in the **Configure** page of your Azure application.

* Client ID
* Redirect URI

You need these values to configure the OAuth flow in your app. 

## Request and acquire an access token from Azure AD

To request and acquire an access token for calling the Microsoft Graph API, you can use **acquireAuthTokenWithResource:clientId:redirectUri:completionBlock:**  provided by the [Microsoft Azure Active Directory Authentication Library (ADAL) for iOS and OSX](https://github.com/AzureAD/azure-activedirectory-library-for-objc). This SDK gives your application the full functionality of Microsoft Azure AD, including industry standard protocol support for OAuth2, Web API integration with user level consent, and two factor authentication support.

This method takes the following parameters:

1. **resourceID** - This is the required resource you want to access. For example, we want to access the Microsoft Graph API so this value would be "https://graph.microsoft.com."
2. **clientID** - The value given to identify your app when you completed the AAD registration.
3. **redirectURI** - Again, this a required value that specifies where a user will be redirected after a successful authentication attempt.


First you'll need to specify an authentication context. This simply defines the authority where you want to get your access token from. In our case it's from an AAD tenant and you'll need to declare it:

	@property (strong,    nonatomic) ADAuthenticationContext *context;

Then initialize it with the location of the authority ("https://login.microsoftonline.com/common"):

	self.context = [ADAuthenticationContext authenticationContextWithAuthority:self.authority]; 


In the [ios-objectivec-connect-rest-sample](https://github.com/microsoftgraph/ios-objectivec-connect-rest-sample) sample we created a singleton authentication class (**AuthenticationManager**) for demonstration purposes that is initialized with the authority and required parameters. Again, this class is merely an example on how to approach the authentication workflow. A code segment of interest: 



	- (void)acquireAuthTokenWithResource:(NSString *)resourceID
                            clientID:(NSString*)clientID
                         redirectURI:(NSURL*)redirectURI
                          completion:(void (^)(ADAuthenticationError *error))completion {
    
    NSLog(@"acquireAuthTokenWithResource");
    [self.context acquireTokenWithResource:resourceID
                                  clientId:clientID
                               redirectUri:redirectURI
                           completionBlock:^(ADAuthenticationResult *result) {
                               NSLog(@"Completion");
                               
                               if (result.status !=AD_SUCCEEDED){
                                   NSLog(@"error");
                                   completion(result.error);
                               }
                               
                               else{
                                   NSLog(@"complete!");
                                   self.accessToken = result.accessToken;
                                   self.userID = result.tokenCacheStoreItem.userInformation.userId;
                                   completion(nil);
                               }
                           }];


The first time this app is run, the Authentication Manager will send a request to the authority which 
will redirect you to a login page. You'll provide your credentials and the response will 
contain the authentication result. If it's successful, it will also contain your refresh and access tokens. The second time this application is run, and assuming 
you didn't clear your token cache and cookies, the Authentication Manager will use the access or refresh 
token in the cache to authenticate client requests. This will result in a call to the service if you need to get an access token. 


## Use the access token in a request to the Microsoft Graph API

With an access token, your app can make authenticated requests to the Microsoft Graph API. Your app must append the access token to the HTTP request header under **Authorization**.

The [ios-objectivec-connect-rest-sample](https://github.com/microsoftgraph/ios-objectivec-connect-rest-sample) sample sends an email using the sendMail endpoint in the Microsoft Graph API. Again, our in our sample we created a singleton authentication class (AuthenticationManager) that is initialized with the access token. We'll need the access token to construct our request.



	- (void)sendMailREST {
    
    AuthenticationManager *authManager = [AuthenticationManager sharedInstance];

	//Helper method used to construct the email message
    NSData *postData = [self mailContent];
    
	//Microsoft Graph API endpoint for sending mail
    NSMutableURLRequest *request = [[NSMutableURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://graph.microsoft.com/v1.0/me/microsoft.graph.sendmail"]];

    [request setHTTPMethod:@"POST"];
    [request setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    [request setValue:@"application/json, text/plain, */*" forHTTPHeaderField:@"Accept"];
    
	// Access token required for request header
    NSString *authorization = [NSString stringWithFormat:@"Bearer %@", authManager.accessToken];
    [request setValue:authorization forHTTPHeaderField:@"Authorization"];
    [request setHTTPBody:postData];

    NSURLConnection *conn = [[NSURLConnection alloc] initWithRequest:request delegate:self];
    
    if(conn) {
        NSLog(@"Connection Successful");
    } else {
        NSLog(@"Connection could not be made");
    }
    
    [conn start];

As you can see, the response is handled with the NSURLConnection delegates, namely the NSURLConnectionDelegate and NSURLConnectionDataDelegate.

## Next Steps

If access token is expired, or about to expire, you can use ADAuthenticationContext’s **acquireTokenSilentWithResource:clientId:redirectUri:completionBlock:** to acquire a new access token. It's usage is covered in the [ios-objectivec-connect-rest-sample](https://github.com/microsoftgraph/ios-objectivec-connect-rest-sample) sample. Also, you can find the code to clear your token cache and stored cookies.  

The Microsoft Graph API is a very powerful, unifiying API that can be used to interact with all kinds of Microsoft data. Check out the [API reference](http://graph.microsoft.io/docs/api-reference/v1.0) to explore what else you can accomplish with the Microsoft Graph API.

