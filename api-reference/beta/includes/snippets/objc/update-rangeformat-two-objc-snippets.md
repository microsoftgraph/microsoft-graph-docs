---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/drive/items/{id}/workbook/worksheets/Sheet1/range(address='$B$1')/format"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphWorkbookRangeFormat *workbookRangeFormat = [[MSGraphWorkbookRangeFormat alloc] init];
[workbookRangeFormat setColumnWidth: 135];
[workbookRangeFormat setHorizontalAlignment:@"Center"];
[workbookRangeFormat setVerticalAlignment:@"Center"];
[workbookRangeFormat setRowHeight: 49];
[workbookRangeFormat setWrapText: false];

NSError *error;
NSData *workbookRangeFormatData = [workbookRangeFormat getSerializedDataWithError:&error];
[urlRequest setHTTPBody:workbookRangeFormatData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```