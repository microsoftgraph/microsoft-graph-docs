---
description: "Automatically generated file. DO NOT MODIFY"
---

```objc

MSHTTPClient *httpClient = [MSClientFactory createHTTPClientWithAuthenticationProvider:authenticationProvider];

NSString *MSGraphBaseURL = @"https://graph.microsoft.com/beta/";
NSMutableURLRequest *urlRequest = [NSMutableURLRequest requestWithURL:[NSURL URLWithString:[MSGraphBaseURL stringByAppendingString:@"/identityGovernance/entitlementManagement/accessPackageAssignmentPolicies/b2eba9a1-b357-42ee-83a8-336522ed6cbf"]]];
[urlRequest setHTTPMethod:@"PUT"];
[urlRequest setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];

MSGraphAccessPackageAssignmentPolicy *accessPackageAssignmentPolicy = [[MSGraphAccessPackageAssignmentPolicy alloc] init];
[accessPackageAssignmentPolicy setId:@"b2eba9a1-b357-42ee-83a8-336522ed6cbf"];
[accessPackageAssignmentPolicy setAccessPackageId:@"1b153a13-76da-4d07-9afa-c6c2b1f2e824"];
[accessPackageAssignmentPolicy setDisplayName:@"All Users"];
[accessPackageAssignmentPolicy setDescription:@"All users can request for access to the directory."];
[accessPackageAssignmentPolicy setIsDenyPolicy: false];
[accessPackageAssignmentPolicy setCanExtend: false];
[accessPackageAssignmentPolicy setDurationInDays: 365];
MSGraphRequestorSettings *requestorSettings = [[MSGraphRequestorSettings alloc] init];
[requestorSettings setScopeType:@"AllExistingDirectorySubjects"];
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
[accessPackageAssignmentPolicy setAccessReviewSettings: null];

NSError *error;
NSData *accessPackageAssignmentPolicyData = [accessPackageAssignmentPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:accessPackageAssignmentPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```