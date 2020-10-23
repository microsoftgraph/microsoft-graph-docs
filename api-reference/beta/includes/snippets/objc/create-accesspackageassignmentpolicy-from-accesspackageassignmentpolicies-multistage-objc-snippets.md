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
[accessPackageAssignmentPolicy setAccessPackageId:@"string (identifier)"];
[accessPackageAssignmentPolicy setDisplayName:@"Users from connected organizations can request"];
[accessPackageAssignmentPolicy setDescription:@"Allow users from configured connected organizations to request and be approved by their sponsors"];
[accessPackageAssignmentPolicy setCanExtend: false];
[accessPackageAssignmentPolicy setDurationInDays: 365];
[accessPackageAssignmentPolicy setExpirationDateTime: null];
MSGraphRequestorSettings *requestorSettings = [[MSGraphRequestorSettings alloc] init];
[requestorSettings setScopeType:@"AllExistingConnectedOrganizationSubjects"];
[requestorSettings setAcceptRequests: true];
NSMutableArray *allowedRequestorsList = [[NSMutableArray alloc] init];
[requestorSettings setAllowedRequestors:allowedRequestorsList];
[accessPackageAssignmentPolicy setRequestorSettings:requestorSettings];
MSGraphApprovalSettings *requestApprovalSettings = [[MSGraphApprovalSettings alloc] init];
[requestApprovalSettings setIsApprovalRequired: true];
[requestApprovalSettings setIsApprovalRequiredForExtension: false];
[requestApprovalSettings setIsRequestorJustificationRequired: true];
[requestApprovalSettings setApprovalMode:@"Serial"];
NSMutableArray *approvalStagesList = [[NSMutableArray alloc] init];
MSGraphApprovalStage *approvalStages = [[MSGraphApprovalStage alloc] init];
[approvalStages setApprovalStageTimeOutInDays: 14];
[approvalStages setIsApproverJustificationRequired: true];
[approvalStages setIsEscalationEnabled: true];
[approvalStages setEscalationTimeInMinutes: 11520];
NSMutableArray *primaryApproversList = [[NSMutableArray alloc] init];
MSGraphUserSet *primaryApprovers = [[MSGraphUserSet alloc] init];
[primaryApprovers setIsBackup: true];
[primaryApprovers setId:@"string (identifier)"];
[primaryApprovers setDescription:@"group for users from connected organizations which have no external sponsor"];
[primaryApproversList addObject: primaryApprovers];
MSGraphUserSet *primaryApprovers = [[MSGraphUserSet alloc] init];
[primaryApprovers setIsBackup: false];
[primaryApproversList addObject: primaryApprovers];
[approvalStages setPrimaryApprovers:primaryApproversList];
NSMutableArray *escalationApproversList = [[NSMutableArray alloc] init];
MSGraphUserSet *escalationApprovers = [[MSGraphUserSet alloc] init];
[escalationApprovers setIsBackup: true];
[escalationApprovers setId:@"string (identifier)"];
[escalationApprovers setDescription:@"user if the external sponsor does not respond"];
[escalationApproversList addObject: escalationApprovers];
[approvalStages setEscalationApprovers:escalationApproversList];
[approvalStagesList addObject: approvalStages];
MSGraphApprovalStage *approvalStages = [[MSGraphApprovalStage alloc] init];
[approvalStages setApprovalStageTimeOutInDays: 14];
[approvalStages setIsApproverJustificationRequired: true];
[approvalStages setIsEscalationEnabled: true];
[approvalStages setEscalationTimeInMinutes: 11520];
NSMutableArray *primaryApproversList = [[NSMutableArray alloc] init];
MSGraphUserSet *primaryApprovers = [[MSGraphUserSet alloc] init];
[primaryApprovers setIsBackup: true];
[primaryApprovers setId:@"string (identifier)"];
[primaryApprovers setDescription:@"group for users from connected organizations which have no internal sponsor"];
[primaryApproversList addObject: primaryApprovers];
MSGraphUserSet *primaryApprovers = [[MSGraphUserSet alloc] init];
[primaryApprovers setIsBackup: false];
[primaryApproversList addObject: primaryApprovers];
[approvalStages setPrimaryApprovers:primaryApproversList];
NSMutableArray *escalationApproversList = [[NSMutableArray alloc] init];
MSGraphUserSet *escalationApprovers = [[MSGraphUserSet alloc] init];
[escalationApprovers setIsBackup: true];
[escalationApprovers setId:@"string (identifier)"];
[escalationApprovers setDescription:@"user if the internal sponsor does not respond"];
[escalationApproversList addObject: escalationApprovers];
[approvalStages setEscalationApprovers:escalationApproversList];
[approvalStagesList addObject: approvalStages];
[requestApprovalSettings setApprovalStages:approvalStagesList];
[accessPackageAssignmentPolicy setRequestApprovalSettings:requestApprovalSettings];
MSGraphAssignmentReviewSettings *accessReviewSettings = [[MSGraphAssignmentReviewSettings alloc] init];
[accessReviewSettings setIsEnabled: true];
[accessReviewSettings setRecurrenceType:@"quarterly"];
[accessReviewSettings setReviewerType:@"Self"];
[accessReviewSettings setStartDateTime: "2020-04-01T07:59:59.998Z"];
[accessReviewSettings setDurationInDays: 25];
NSMutableArray *reviewersList = [[NSMutableArray alloc] init];
[accessReviewSettings setReviewers:reviewersList];
[accessPackageAssignmentPolicy setAccessReviewSettings:accessReviewSettings];

NSError *error;
NSData *accessPackageAssignmentPolicyData = [accessPackageAssignmentPolicy getSerializedDataWithError:&error];
[urlRequest setHTTPBody:accessPackageAssignmentPolicyData];

MSURLSessionDataTask *meDataTask = [httpClient dataTaskWithRequest:urlRequest 
	completionHandler: ^(NSData *data, NSURLResponse *response, NSError *nserror) {

		//Request Completed

}];

[meDataTask execute];

```