---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityProviders"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphIdentityProvider *identityProvider = [[MSGraphIdentityProvider alloc] init];
[identityProvider setName:@"Login with the Contoso identity provider"];
[identityProvider setType:@"OpenIDConnect"];
[identityProvider setClientId:@"56433757-cadd-4135-8431-2c9e3fd68ae8"];
[identityProvider setClientSecret:@"12345"];
MSGraphClaimsMapping *claimsMapping = [[MSGraphClaimsMapping alloc] init];
[claimsMapping setUserId:@"myUserId"];
[claimsMapping setGivenName:@"myGivenName"];
[claimsMapping setSurname:@"mySurname"];
[claimsMapping setEmail:@"myEmail"];
[claimsMapping setDisplayName:@"myDisplayName"];
[identityProvider setClaimsMapping:claimsMapping];
[identityProvider setDomainHint:@"mycustomoidc"];
[identityProvider setMetadataUrl:@"https://mycustomoidc.com/.well-known/openid-configuration"];
[identityProvider setResponseMode: [MSGraphOpenIdConnectResponseMode form_post]];
[identityProvider setResponseType: [MSGraphOpenIdConnectResponseTypes code]];
[identityProvider setScope:@"openid"];

NSError *error;
NSData *identityProviderData = [identityProvider getSerializedDataWithError:&error];
[urlRequest setHTTPBody:identityProviderData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```