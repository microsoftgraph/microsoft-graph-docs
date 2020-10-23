---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/profile/publications"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphItemPublication *itemPublication = [[MSGraphItemPublication alloc] init];
[itemPublication setDescription:@"One persons journey to the top of the branding management field."];
[itemPublication setDisplayName:@"Got Brands? The story of Innocenty Popov and his journey to the top."];
[itemPublication setPublishedDate:@"Date"];
[itemPublication setPublisher:@"International Association of Branding Management Publishing"];
[itemPublication setThumbnailUrl:@"https://iabm.io/sdhdfhsdhshsd.jpg"];
[itemPublication setWebUrl:@"https://www.iabm.io"];

NSError *error;
NSData *itemPublicationData = [itemPublication getSerializedDataWithError:&error];
[urlRequest setHTTPBody:itemPublicationData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```