---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.accessPackageId = "string (identifier)";
accessPackageAssignmentPolicy.displayName = "Users from connected organizations can request";
accessPackageAssignmentPolicy.description = "Allow users from configured connected organizations to request and be approved by their sponsors";
accessPackageAssignmentPolicy.canExtend = false;
accessPackageAssignmentPolicy.durationInDays = 365;
accessPackageAssignmentPolicy.expirationDateTime = CalendarSerializer.deserialize("null");
RequestorSettings requestorSettings = new RequestorSettings();
requestorSettings.scopeType = "AllExistingConnectedOrganizationSubjects";
requestorSettings.acceptRequests = true;
LinkedList<UserSet> allowedRequestorsList = new LinkedList<UserSet>();
requestorSettings.allowedRequestors = allowedRequestorsList;
accessPackageAssignmentPolicy.requestorSettings = requestorSettings;
ApprovalSettings requestApprovalSettings = new ApprovalSettings();
requestApprovalSettings.isApprovalRequired = true;
requestApprovalSettings.isApprovalRequiredForExtension = false;
requestApprovalSettings.isRequestorJustificationRequired = true;
requestApprovalSettings.approvalMode = "Serial";
LinkedList<ApprovalStage> approvalStagesList = new LinkedList<ApprovalStage>();
ApprovalStage approvalStages = new ApprovalStage();
approvalStages.approvalStageTimeOutInDays = 14;
approvalStages.isApproverJustificationRequired = true;
approvalStages.isEscalationEnabled = true;
approvalStages.escalationTimeInMinutes = 11520;
LinkedList<UserSet> primaryApproversList = new LinkedList<UserSet>();
GroupMembers primaryApprovers = new GroupMembers();
primaryApprovers.isBackup = true;
primaryApprovers.id = "string (identifier)";
primaryApprovers.description = "group for users from connected organizations which have no external sponsor";
primaryApproversList.add(primaryApprovers);
ExternalSponsors primaryApprovers1 = new ExternalSponsors();
primaryApprovers1.isBackup = false;
primaryApproversList.add(primaryApprovers1);
approvalStages.primaryApprovers = primaryApproversList;
LinkedList<UserSet> escalationApproversList = new LinkedList<UserSet>();
SingleUser escalationApprovers = new SingleUser();
escalationApprovers.isBackup = true;
escalationApprovers.id = "string (identifier)";
escalationApprovers.description = "user if the external sponsor does not respond";
escalationApproversList.add(escalationApprovers);
approvalStages.escalationApprovers = escalationApproversList;
approvalStagesList.add(approvalStages);
ApprovalStage approvalStages1 = new ApprovalStage();
approvalStages1.approvalStageTimeOutInDays = 14;
approvalStages1.isApproverJustificationRequired = true;
approvalStages1.isEscalationEnabled = true;
approvalStages1.escalationTimeInMinutes = 11520;
LinkedList<UserSet> primaryApproversList1 = new LinkedList<UserSet>();
GroupMembers primaryApprovers2 = new GroupMembers();
primaryApprovers2.isBackup = true;
primaryApprovers2.id = "string (identifier)";
primaryApprovers2.description = "group for users from connected organizations which have no internal sponsor";
primaryApproversList1.add(primaryApprovers2);
InternalSponsors primaryApprovers3 = new InternalSponsors();
primaryApprovers3.isBackup = false;
primaryApproversList1.add(primaryApprovers3);
approvalStages1.primaryApprovers = primaryApproversList1;
LinkedList<UserSet> escalationApproversList1 = new LinkedList<UserSet>();
SingleUser escalationApprovers1 = new SingleUser();
escalationApprovers1.isBackup = true;
escalationApprovers1.id = "string (identifier)";
escalationApprovers1.description = "user if the internal sponsor does not respond";
escalationApproversList1.add(escalationApprovers1);
approvalStages1.escalationApprovers = escalationApproversList1;
approvalStagesList.add(approvalStages1);
requestApprovalSettings.approvalStages = approvalStagesList;
accessPackageAssignmentPolicy.requestApprovalSettings = requestApprovalSettings;
AssignmentReviewSettings accessReviewSettings = new AssignmentReviewSettings();
accessReviewSettings.isEnabled = true;
accessReviewSettings.recurrenceType = "quarterly";
accessReviewSettings.reviewerType = "Self";
accessReviewSettings.startDateTime = CalendarSerializer.deserialize("2020-04-01T07:59:59.998Z");
accessReviewSettings.durationInDays = 25;
LinkedList<UserSet> reviewersList = new LinkedList<UserSet>();
accessReviewSettings.reviewers = reviewersList;
accessPackageAssignmentPolicy.accessReviewSettings = accessReviewSettings;

graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentPolicies()
	.buildRequest()
	.post(accessPackageAssignmentPolicy);

```