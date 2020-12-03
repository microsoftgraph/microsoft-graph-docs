---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/connections/contosohr/items/TSP228082938"]]];
[urlRequest setHTTPMethod:@"PUT"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphExternalItem *externalItem = [[MSGraphExternalItem alloc] init];
NSMutableArray *aclList = [[NSMutableArray alloc] init];
MSGraphAcl *acl = [[MSGraphAcl alloc] init];
[acl setType: [MSGraphAclType user]];
[acl setValue:@"e811976d-83df-4cbd-8b9b-5215b18aa874"];
[acl setAccessType: [MSGraphAccessType grant]];
[acl setIdentitySource:@"azureActiveDirectory"];
[aclList addObject: acl];
MSGraphAcl *acl = [[MSGraphAcl alloc] init];
[acl setType: [MSGraphAclType group]];
[acl setValue:@"14m1b9c38qe647f6a"];
[acl setAccessType: [MSGraphAccessType deny]];
[acl setIdentitySource:@"external"];
[aclList addObject: acl];
[externalItem setAcl:aclList];
MSGraphProperties *properties = [[MSGraphProperties alloc] init];
[properties setTitle:@"Error in the payment gateway"];
[properties setPriority: 1];
[properties setAssignee:@"john@contoso.com"];
[externalItem setProperties:properties];
MSGraphExternalItemContent *content = [[MSGraphExternalItemContent alloc] init];
[content setValue:@"Error in payment gateway..."];
[content setType: [MSGraphExternalItemContentType text]];
[externalItem setContent:content];

NSError *error;
NSData *externalItemData = [externalItem getSerializedDataWithError:&error];
[urlRequest setHTTPBody:externalItemData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```