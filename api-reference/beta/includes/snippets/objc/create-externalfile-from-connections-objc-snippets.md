---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/connections/contosofiles/items/myFile01"]]];
[urlRequest setHTTPMethod:@"PUT"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphExternalItem *externalItem = [[MSGraphExternalItem alloc] init];
NSMutableArray *aclList = [[NSMutableArray alloc] init];
MSGraphAcl *acl = [[MSGraphAcl alloc] init];
[acl setType: [MSGraphAclType user]];
[acl setValue:@"49103559-feac-4575-8b94-254814dfca72"];
[acl setAccessType: [MSGraphAccessType grant]];
[acl setIdentitySource:@"Azure Active Directory"];
[aclList addObject: acl];
[externalItem setAcl:aclList];
[externalItem setCreatedDateTime: "2019-01-31T03:44:19.0354159Z"];
[externalItem setModifiedDateTime: "2019-01-31T03:44:19.0354159Z"];
[externalItem setCreatedBy:@"Pradeep Gupta"];
[externalItem setLastModifiedBy:@"Adele Vance"];
[externalItem setTitle:@"Enterprise Search Graph Ingestion API"];
[externalItem setUrl:@"file://filesrv02.corp.contoso.com/data/project/Enterprise Search.docx"];
[externalItem setName:@"Enterprise Search.docx"];
[externalItem setExtension:@"docx"];
[externalItem setSize: 8676776];
[externalItem setContent:@"The quick brown fox jumps over the lazy dog."];

NSError *error;
NSData *externalItemData = [externalItem getSerializedDataWithError:&error];
[urlRequest setHTTPBody:externalItemData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```