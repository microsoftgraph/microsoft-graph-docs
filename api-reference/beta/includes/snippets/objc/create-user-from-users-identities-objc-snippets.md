---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/users"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphUser *user = [[MSGraphUser alloc] init];
[user setDisplayName:@"John Smith"];
NSMutableArray *identitiesList = [[NSMutableArray alloc] init];
MSGraphObjectIdentity *identities = [[MSGraphObjectIdentity alloc] init];
[identities setSignInType:@"userName"];
[identities setIssuer:@"contoso.onmicrosoft.com"];
[identities setIssuerAssignedId:@"johnsmith"];
[identitiesList addObject: identities];
MSGraphObjectIdentity *identities = [[MSGraphObjectIdentity alloc] init];
[identities setSignInType:@"emailAddress"];
[identities setIssuer:@"contoso.onmicrosoft.com"];
[identities setIssuerAssignedId:@"jsmith@yahoo.com"];
[identitiesList addObject: identities];
MSGraphObjectIdentity *identities = [[MSGraphObjectIdentity alloc] init];
[identities setSignInType:@"federated"];
[identities setIssuer:@"facebook.com"];
[identities setIssuerAssignedId:@"5eecb0cd"];
[identitiesList addObject: identities];
[user setIdentities:identitiesList];
MSGraphPasswordProfile *passwordProfile = [[MSGraphPasswordProfile alloc] init];
[passwordProfile setPassword:@"password-value"];
[passwordProfile setForceChangePasswordNextSignIn: false];
[user setPasswordProfile:passwordProfile];
[user setPasswordPolicies:@"DisablePasswordExpiration"];

NSError *error;
NSData *userData = [user getSerializedDataWithError:&error];
[urlRequest setHTTPBody:userData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```