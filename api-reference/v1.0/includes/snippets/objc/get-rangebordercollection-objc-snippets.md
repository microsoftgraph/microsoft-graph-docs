---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/v1.0/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/drive/items/{id}/workbook/names/{name}/range/format/borders"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *workbookRangeBorderList = [[NSMutableArray alloc] init];
		workbookRangeBorderList = [jsonFinal valueForKey:@"value"];
		MSGraphWorkbookRangeBorder *workbookRangeBorder = [[MSGraphWorkbookRangeBorder alloc] initWithDictionary:[workbookRangeBorderList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```