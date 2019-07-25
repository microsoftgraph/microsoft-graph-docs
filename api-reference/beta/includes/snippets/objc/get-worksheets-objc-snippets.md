---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/drive/items/{id}/workbook/worksheets"]]];
[urlRequest setHTTPMethod:@"GET"];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		NSError *jsonError = nil;
		NSDictionary *jsonFinal = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
		NSMutableArray *workbookWorksheetList = [[NSMutableArray alloc] init];
		workbookWorksheetList = [jsonFinal valueForKey:@"value"];
		MSGraphWorkbookWorksheet *workbookWorksheet = [[MSGraphWorkbookWorksheet alloc] initWithDictionary:[workbookWorksheetList objectAtIndex: 0] error:&nserror];

}];

[meDataTask execute];

```