---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityGovernance/entitlementManagement/accessPackageAssignmentPolicies"]]];
[urlRequest setHTTPMethod:@"POST"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAccessPackageAssignmentPolicy *accessPackageAssignmentPolicy = [[MSGraphAccessPackageAssignmentPolicy alloc] init];
[accessPackageAssignmentPolicy setAccessPackageId:@"56ff43fd-6b05-48df-9634-956a777fce6d"];
[accessPackageAssignmentPolicy setDisplayName:@"direct"];
[accessPackageAssignmentPolicy setDescription:@"direct assignments by administrator"];
[accessPackageAssignmentPolicy setAccessReviewSettings: null];
MSGraphRequestorSettings *requestorSettings = [[MSGraphRequestorSettings alloc] init];
[requestorSettings setScopeType:@"NoSubjects"];
[requestorSettings setAcceptRequests: true];
NSMutableArray *allowedRequestorsList = [[NSMutableArray alloc] init];
[requestorSettings setAllowedRequestors:allowedRequestorsList];
[accessPackageAssignmentPolicy setRequestorSettings:requestorSettings];
MSGraphApprovalSettings *requestApprovalSettings = [[MSGraphApprovalSettings alloc] init];
[requestApprovalSettings setIsApprovalRequired: false];
[requestApprovalSettings setIsApprovalRequiredForExtension: false];
[requestApprovalSettings setIsRequestorJustificationRequired: false];
[requestApprovalSettings setApprovalMode:@"NoApproval"];
NSMutableArray *approvalStagesList = [[NSMutableArray alloc] init];
[requestApprovalSettings setApprovalStages:approvalStagesList];
[accessPackageAssignmentPolicy setRequestApprovalSettings:requestApprovalSettings];

NSError *error;
NSData *accessPackageAssignmentPolicyData = [accessPackageAssignmentPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:accessPackageAssignmentPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```