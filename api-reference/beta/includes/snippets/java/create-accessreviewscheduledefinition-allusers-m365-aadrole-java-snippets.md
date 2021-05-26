---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewScheduleDefinition accessReviewScheduleDefinition = new AccessReviewScheduleDefinition();
accessReviewScheduleDefinition.displayName = "Review employee access to LinkedIn";
accessReviewScheduleDefinition.descriptionForAdmins = "Review employee access to LinkedIn";
PrincipalResourceMembershipsScope scope = new PrincipalResourceMembershipsScope();
LinkedList<AccessReviewScope> principalScopesList = new LinkedList<AccessReviewScope>();
AccessReviewQueryScope principalScopes = new AccessReviewQueryScope();
principalScopes.query = "/users";
principalScopes.queryType = "MicrosoftGraph";
principalScopesList.add(principalScopes);
scope.principalScopes = principalScopesList;
LinkedList<AccessReviewScope> resourceScopesList = new LinkedList<AccessReviewScope>();
AccessReviewQueryScope resourceScopes = new AccessReviewQueryScope();
resourceScopes.query = "/servicePrincipals/bae11f90-7d5d-46ba-9f55-8112b59d92ae";
resourceScopes.queryType = "MicrosoftGraph";
resourceScopesList.add(resourceScopes);
scope.resourceScopes = resourceScopesList;
accessReviewScheduleDefinition.scope = scope;
LinkedList<AccessReviewReviewerScope> reviewersList = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope reviewers = new AccessReviewReviewerScope();
reviewers.query = "./manager";
reviewers.queryType = "MicrosoftGraph";
reviewers.queryRoot = "decisions";
reviewersList.add(reviewers);
accessReviewScheduleDefinition.reviewers = reviewersList;
LinkedList<AccessReviewReviewerScope> backupReviewersList = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope backupReviewers = new AccessReviewReviewerScope();
backupReviewers.query = "/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers";
backupReviewers.queryType = "MicrosoftGraph";
backupReviewersList.add(backupReviewers);
accessReviewScheduleDefinition.backupReviewers = backupReviewersList;
LinkedList<AccessReviewReviewerScope> fallbackReviewersList = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope fallbackReviewers = new AccessReviewReviewerScope();
fallbackReviewers.query = "/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers";
fallbackReviewers.queryType = "MicrosoftGraph";
fallbackReviewersList.add(fallbackReviewers);
accessReviewScheduleDefinition.fallbackReviewers = fallbackReviewersList;
AccessReviewScheduleSettings settings = new AccessReviewScheduleSettings();
settings.mailNotificationsEnabled = true;
settings.reminderNotificationsEnabled = true;
settings.justificationRequiredOnApproval = true;
settings.defaultDecisionEnabled = true;
settings.defaultDecision = "Recommendation";
settings.instanceDurationInDays = 180;
settings.autoApplyDecisionsEnabled = true;
settings.recommendationsEnabled = true;
PatternedRecurrence recurrence = new PatternedRecurrence();
RecurrencePattern pattern = new RecurrencePattern();
pattern.type = RecurrencePatternType.ABSOLUTE_MONTHLY;
pattern.interval = 6;
pattern.dayOfMonth = 0;
recurrence.pattern = pattern;
RecurrenceRange range = new RecurrenceRange();
range.type = RecurrenceRangeType.NUMBERED;
range.startDate = new DateOnly(1900,1,1);
range.endDate = new DateOnly(1900,1,1);
recurrence.range = range;
settings.recurrence = recurrence;
accessReviewScheduleDefinition.settings = settings;

graphClient.identityGovernance().accessReviews().definitions()
	.buildRequest()
	.post(accessReviewScheduleDefinition);

```