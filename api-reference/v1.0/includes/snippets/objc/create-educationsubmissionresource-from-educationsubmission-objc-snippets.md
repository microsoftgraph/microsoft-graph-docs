---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/education/classes/acdefc6b-2dc6-4e71-b1e9-6d9810ab1793/assignments/ad8afb28-c138-4ad7-b7f5-a6986c2655a8/submissions/fbe51c90-78b7-418a-b5f3-871bf8d8d21e/resources"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphEducationSubmissionResource *educationSubmissionResource = [[MSGraphEducationSubmissionResource alloc] init];
[educationSubmissionResource setAssignmentResourceUrl:@"https://graph.microsoft.com/v1.0/drives/b!8-QjN2tsv0WyGnTv7vOvnQkmGHbbeMNLqYKONmHLVnvCVmBYIGpeT456457AdW9f/items/017NJZI25NOB5XZNLABF7646XAMDZTQQ6T"];
MSGraphEducationResource *resource = [[MSGraphEducationResource alloc] init];
[resource setDisplayName:@"Report.docx"];
[resource setCreatedDateTime: "2017-10-21T07:52:53.9863696Z"];
MSGraphIdentitySet *createdBy = [[MSGraphIdentitySet alloc] init];
[createdBy setApplication: null];
[createdBy setDevice: null];
MSGraphIdentity *user = [[MSGraphIdentity alloc] init];
[user setId:@"63cc91d2-59c7-4732-9594-35b91a26b340"];
[user setDisplayName: null];
[createdBy setUser:user];
[resource setCreatedBy:createdBy];
[resource setLastModifiedDateTime: "2017-10-21T07:52:53.9863696Z"];
MSGraphIdentitySet *lastModifiedBy = [[MSGraphIdentitySet alloc] init];
[lastModifiedBy setApplication: null];
[lastModifiedBy setDevice: null];
MSGraphIdentity *user = [[MSGraphIdentity alloc] init];
[user setId:@"63cc91d2-59c7-4732-9594-35b91a26b340"];
[user setDisplayName: null];
[lastModifiedBy setUser:user];
[resource setLastModifiedBy:lastModifiedBy];
[resource setFileUrl:@"https://graph.microsoft.com/v1.0/drives/b!8-QjN2tsv0WyGnTv7vOvnQkmGHbbeMNLqYKONmHLVnvCVmBYIGpeTZ_iul5AdW9f/items/017NJZI27BCN2QI2H7HJGLIVPXR6SD2DH6"];
[educationSubmissionResource setResource:resource];

NSError *error;
NSData *educationSubmissionResourceData = [educationSubmissionResource getSerializedDataWithError:&error];
[urlRequest setHTTPBody:educationSubmissionResourceData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```