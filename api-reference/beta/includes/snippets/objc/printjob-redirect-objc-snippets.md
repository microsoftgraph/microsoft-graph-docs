---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/print/printers/d5ef6ec4-07ca-4212-baf9-d45be126bfbb/jobs/44353/redirect"]]];
[urlRequest setHTTPMethod:@"POST"];

NSMutableDictionary *payloadDictionary = [[NSMutableDictionary alloc] init];

NSString *destinationPrinterId = @"9a3b3956-ce5b-4d06-a605-5b0bd3e9ddea";
payloadDictionary[@"destinationPrinterId"] = destinationPrinterId;

MSGraphPrintJobConfiguration *configuration = [[MSGraphPrintJobConfiguration alloc] init];
[configuration setFeedOrientation: [MSGraphPrinterFeedOrientation longEdgeFirst]];
NSMutableArray *pageRangesList = [[NSMutableArray alloc] init];
MSGraphIntegerRange *pageRanges = [[MSGraphIntegerRange alloc] init];
[pageRanges setStart: 1];
[pageRanges setEnd: 1];
[pageRangesList addObject: pageRanges];
[configuration setPageRanges:pageRangesList];
[configuration setQuality: [MSGraphPrintQuality medium]];
[configuration setDpi: 600];
[configuration setOrientation: [MSGraphPrintOrientation landscape]];
[configuration setCopies: 1];
[configuration setDuplexMode: [MSGraphPrintDuplexMode oneSided]];
[configuration setColorMode: [MSGraphPrintColorMode blackAndWhite]];
[configuration setInputBin:@"by-pass-tray"];
[configuration setOutputBin:@"output-tray"];
[configuration setMediaSize:@"A4"];
MSGraphPrintMargin *margin = [[MSGraphPrintMargin alloc] init];
[margin setTop: 0];
[margin setBottom: 0];
[margin setLeft: 0];
[margin setRight: 0];
[configuration setMargin:margin];
[configuration setMediaType:@"stationery"];
[configuration setFinishings: null];
[configuration setPagesPerSheet: 1];
[configuration setMultipageLayout: [MSGraphPrintMultipageLayout clockwiseFromBottomLeft]];
[configuration setCollate: false];
[configuration setScaling: [MSGraphPrintScaling shrinkToFit]];
[configuration setFitPdfToPage: false];
payloadDictionary[@"configuration"] = configuration;

NSData *data = [NSJSONSerialization dataWithJSONObject:payloadDictionary options:kNilOptions error:&error];
[urlRequest setHTTPBody:data];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```