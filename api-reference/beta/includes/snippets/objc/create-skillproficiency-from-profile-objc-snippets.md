---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/me/profile/skills"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphSkillProficiency *skillProficiency = [[MSGraphSkillProficiency alloc] init];
NSMutableArray *categoriesList = [[NSMutableArray alloc] init];
[categoriesList addObject: @"Professional"];
[skillProficiency setCategories:categoriesList];
[skillProficiency setAllowedAudiences: [MSGraphAllowedAudiences organization]];
[skillProficiency setDisplayName:@"API Design"];
[skillProficiency setProficiency: [MSGraphSkillProficiencyLevel generalProfessional]];
NSMutableArray *collaborationTagsList = [[NSMutableArray alloc] init];
[collaborationTagsList addObject: @"ableToMentor"];
[skillProficiency setCollaborationTags:collaborationTagsList];

NSError *error;
NSData *skillProficiencyData = [skillProficiency getSerializedDataWithError:&error];
[urlRequest setHTTPBody:skillProficiencyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```