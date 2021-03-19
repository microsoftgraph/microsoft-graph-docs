---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessPackageAssignmentPolicy accessPackageAssignmentPolicy = new AccessPackageAssignmentPolicy();
accessPackageAssignmentPolicy.accessPackageId = "b2eba9a1-b357-42ee-83a8-336522ed6cbf";
accessPackageAssignmentPolicy.displayName = "Users from connected organizations can request";
accessPackageAssignmentPolicy.description = "Allow users from configured connected organizations to request and be approved by their sponsors";
accessPackageAssignmentPolicy.canExtend = false;
accessPackageAssignmentPolicy.durationInDays = 365;
accessPackageAssignmentPolicy.expirationDateTime = OffsetDateTimeSerializer.deserialize("null");
RequestorSettings requestorSettings = new RequestorSettings();
requestorSettings.scopeType = "AllExistingConnectedOrganizationSubjects";
requestorSettings.acceptRequests = true;
accessPackageAssignmentPolicy.requestorSettings = requestorSettings;
ApprovalSettings requestApprovalSettings = new ApprovalSettings();
requestApprovalSettings.isApprovalRequired = true;
requestApprovalSettings.isApprovalRequiredForExtension = false;
requestApprovalSettings.isRequestorJustificationRequired = true;
requestApprovalSettings.approvalMode = "SingleStage";
LinkedList<ApprovalStage> approvalStagesList = new LinkedList<ApprovalStage>();
ApprovalStage approvalStages = new ApprovalStage();
approvalStages.approvalStageTimeOutInDays = 14;
approvalStages.isApproverJustificationRequired = true;
approvalStages.isEscalationEnabled = true;
approvalStages.escalationTimeInMinutes = 11520;
LinkedList<UserSet> primaryApproversList = new LinkedList<UserSet>();
GroupMembers primaryApprovers = new GroupMembers();
primaryApprovers.isBackup = true;
primaryApprovers.id = "d2dcb9a1-a445-42ee-83a8-476522ed6cbf";
primaryApprovers.description = "group for users from connected organizations which have no external sponsor";
primaryApproversList.add(primaryApprovers);
ExternalSponsors primaryApprovers1 = new ExternalSponsors();
primaryApprovers1.isBackup = false;
primaryApproversList.add(primaryApprovers1);
approvalStages.primaryApprovers = primaryApproversList;
approvalStagesList.add(approvalStages);
requestApprovalSettings.approvalStages = approvalStagesList;
accessPackageAssignmentPolicy.requestApprovalSettings = requestApprovalSettings;
AssignmentReviewSettings accessReviewSettings = new AssignmentReviewSettings();
accessReviewSettings.isEnabled = false;
accessPackageAssignmentPolicy.accessReviewSettings = accessReviewSettings;
LinkedList<AccessPackageQuestion> questionsList = new LinkedList<AccessPackageQuestion>();
AccessPackageMultipleChoiceQuestion questions = new AccessPackageMultipleChoiceQuestion();
questions.isRequired = false;
AccessPackageLocalizedContent text = new AccessPackageLocalizedContent();
text.defaultText = "what state are you from?";
LinkedList<AccessPackageLocalizedText> localizedTextsList = new LinkedList<AccessPackageLocalizedText>();
AccessPackageLocalizedText localizedTexts = new AccessPackageLocalizedText();
localizedTexts.text = "¿De qué estado eres?";
localizedTexts.languageCode = "es";
localizedTextsList.add(localizedTexts);
text.localizedTexts = localizedTextsList;
questions.text = text1;
LinkedList<AccessPackageAnswerChoice> choicesList = new LinkedList<AccessPackageAnswerChoice>();
AccessPackageAnswerChoice choices = new AccessPackageAnswerChoice();
choices.actualValue = "AZ";
AccessPackageLocalizedContent displayValue = new AccessPackageLocalizedContent();
LinkedList<AccessPackageLocalizedText> localizedTextsList1 = new LinkedList<AccessPackageLocalizedText>();
AccessPackageLocalizedText localizedTexts1 = new AccessPackageLocalizedText();
localizedTexts1.text = "Arizona";
localizedTexts1.languageCode = "es";
localizedTextsList1.add(localizedTexts1);
displayValue.localizedTexts = localizedTextsList1;
choices.displayValue = displayValue;
choicesList.add(choices);
AccessPackageAnswerChoice choices1 = new AccessPackageAnswerChoice();
choices1.actualValue = "CA";
AccessPackageLocalizedContent displayValue1 = new AccessPackageLocalizedContent();
LinkedList<AccessPackageLocalizedText> localizedTextsList2 = new LinkedList<AccessPackageLocalizedText>();
AccessPackageLocalizedText localizedTexts2 = new AccessPackageLocalizedText();
localizedTexts2.text = "California";
localizedTexts2.languageCode = "es";
localizedTextsList2.add(localizedTexts2);
displayValue1.localizedTexts = localizedTextsList2;
choices1.displayValue = displayValue1;
choicesList.add(choices1);
AccessPackageAnswerChoice choices2 = new AccessPackageAnswerChoice();
choices2.actualValue = "OH";
AccessPackageLocalizedContent displayValue2 = new AccessPackageLocalizedContent();
LinkedList<AccessPackageLocalizedText> localizedTextsList3 = new LinkedList<AccessPackageLocalizedText>();
AccessPackageLocalizedText localizedTexts3 = new AccessPackageLocalizedText();
localizedTexts3.text = "Ohio";
localizedTexts3.languageCode = "es";
localizedTextsList3.add(localizedTexts3);
displayValue2.localizedTexts = localizedTextsList3;
choices2.displayValue = displayValue2;
choicesList.add(choices2);
questions.choices = choicesList;
questions.allowsMultipleSelection = false;
questionsList.add(questions);
AccessPackageTextInputQuestion questions1 = new AccessPackageTextInputQuestion();
questions1.isRequired = false;
AccessPackageLocalizedContent text5 = new AccessPackageLocalizedContent();
text5.defaultText = "Who is your manager?";
LinkedList<AccessPackageLocalizedText> localizedTextsList4 = new LinkedList<AccessPackageLocalizedText>();
AccessPackageLocalizedText localizedTexts4 = new AccessPackageLocalizedText();
localizedTexts4.text = "por qué necesita acceso a este paquete";
localizedTexts4.languageCode = "es";
localizedTextsList4.add(localizedTexts4);
text5.localizedTexts = localizedTextsList4;
questions1.text = text6;
questions1.isSingleLineQuestion = false;
questionsList.add(questions1);
accessPackageAssignmentPolicy.questions = questionsList;

graphClient.identityGovernance().entitlementManagement().accessPackageAssignmentPolicies()
	.buildRequest()
	.post(accessPackageAssignmentPolicy);

```