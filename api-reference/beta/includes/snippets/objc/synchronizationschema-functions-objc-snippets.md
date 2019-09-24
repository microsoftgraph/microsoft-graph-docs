---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/servicePrincipals/{id}/synchronization/jobs/{jobId}/schema/functions"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *attributeMappingFunctionSchemaList = [[NSMutableArray alloc] init];
		attributeMappingFunctionSchemaList = [jsonFinal valueForKey:@"value"];
		MSGraphAttributeMappingFunctionSchema *attributeMappingFunctionSchema = [[MSGraphAttributeMappingFunctionSchema alloc] initWithDictionary:[attributeMappingFunctionSchemaList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```