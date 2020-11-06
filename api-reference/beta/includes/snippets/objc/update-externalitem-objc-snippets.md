---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/connections/contosohr/items/TSP228082938"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphExternalItem *externalItem = [[MSGraphExternalItem alloc] init];
NSMutableArray *aclList = [[NSMutableArray alloc] init];
MSGraphAcl *acl = [[MSGraphAcl alloc] init];
[acl setType: [MSGraphAclType everyone]];
[acl setValue:@"67a141d8-cf4e-4528-ba07-bed21bfacd2d"];
[acl setAccessType: [MSGraphAccessType grant]];
[acl setIdentitySource:@"azureActiveDirectory"];
[aclList addObject: acl];
[externalItem setAcl:aclList];

NSError *error;
NSData *externalItemData = [externalItem getSerializedDataWithError:&error];
[urlRequest setHTTPBody:externalItemData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```