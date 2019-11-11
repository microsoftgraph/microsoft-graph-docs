---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/users/{id}/calendar/calendarPermissions/{id}"]]];
[urlRequest setHTTPMethod:@"PATCH"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphCalendarPermission *calendarPermission = [[MSGraphCalendarPermission alloc] init];
MSGraphEmailAddress *emailAddress = [[MSGraphEmailAddress alloc] init];
[emailAddress setName:@"My Organization"];
[calendarPermission setEmailAddress:emailAddress];
[calendarPermission setIsRemovable: true];
[calendarPermission setIsInsideOrganization: true];
[calendarPermission setRole: [MSGraphCalendarRoleType write]];
NSMutableArray *allowedRolesList = [[NSMutableArray alloc] init];
[allowedRolesList addObject: @"none"];
[allowedRolesList addObject: @"freeBusyRead"];
[allowedRolesList addObject: @"limitedRead"];
[allowedRolesList addObject: @"read"];
[allowedRolesList addObject: @"write"];
[calendarPermission setAllowedRoles:allowedRolesList];
[calendarPermission setId:@"RGVmYXVsdA=="];

NSError *error;
NSData *calendarPermissionData = [calendarPermission getSerializedDataWithError:&error];
[urlRequest setHTTPBody:calendarPermissionData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```