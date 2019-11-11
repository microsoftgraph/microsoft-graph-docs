---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/profile/websites"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphPersonWebsite *personWebsite = [[MSGraphPersonWebsite alloc] init];
NSMutableArray *categoriesList = [[NSMutableArray alloc] init];
[categoriesList addObject: @"categories-value"];
[personWebsite setCategories:categoriesList];
[personWebsite setDescription:@"description-value"];
[personWebsite setDisplayName:@"displayName-value"];
[personWebsite setWebUrl:@"webUrl-value"];

NSError *error;
NSData *personWebsiteData = [personWebsite getSerializedDataWithError:&error];
[urlRequest setHTTPBody:personWebsiteData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```