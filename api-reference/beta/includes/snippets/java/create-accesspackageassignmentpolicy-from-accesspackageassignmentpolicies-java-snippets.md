---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.accessPackageId = "56ff43fd-6b05-48df-9634-956a777fce6d";
accessPackageAssignmentPolicy.displayName = "direct";
accessPackageAssignmentPolicy.description = "direct assignments by administrator";
accessPackageAssignmentPolicy.accessReviewSettings = null;
RequestorSettings requestorSettings = new RequestorSettings();
requestorSettings.scopeType = "NoSubjects";
requestorSettings.acceptRequests = true;
LinkedList<UserSet> allowedRequestorsList = new LinkedList<UserSet>();
requestorSettings.allowedRequestors = allowedRequestorsList;
accessPackageAssignmentPolicy.requestorSettings = requestorSettings;
ApprovalSettings requestApprovalSettings = new ApprovalSettings();
requestApprovalSettings.isApprovalRequired = false;
requestApprovalSettings.isApprovalRequiredForExtension = false;
requestApprovalSettings.isRequestorJustificationRequired = false;
requestApprovalSettings.approvalMode = "NoApproval";
LinkedList<ApprovalStage> approvalStagesList = new LinkedList<ApprovalStage>();
requestApprovalSettings.approvalStages = approvalStagesList;
accessPackageAssignmentPolicy.requestApprovalSettings = requestApprovalSettings;

graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentPolicies()
	.buildRequest()
	.post(accessPackageAssignmentPolicy);

```