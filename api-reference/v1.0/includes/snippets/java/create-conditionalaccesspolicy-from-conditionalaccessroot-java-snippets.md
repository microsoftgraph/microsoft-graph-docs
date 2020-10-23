---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConditionalAccessPolicy conditionalAccessPolicy = new ConditionalAccessPolicy();
conditionalAccessPolicy.displayName = "Require MFA to EXO from non-compliant devices.";
conditionalAccessPolicy.state = ConditionalAccessPolicyState.ENABLED;
ConditionalAccessConditionSet conditions = new ConditionalAccessConditionSet();
ConditionalAccessApplications applications = new ConditionalAccessApplications();
LinkedList<String> includeApplicationsList = new LinkedList<String>();
includeApplicationsList.add("00000002-0000-0ff1-ce00-000000000000");
applications.includeApplications = includeApplicationsList;
conditions.applications = applications;
ConditionalAccessUsers users = new ConditionalAccessUsers();
LinkedList<String> includeGroupsList = new LinkedList<String>();
includeGroupsList.add("ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba");
users.includeGroups = includeGroupsList;
conditions.users = users;
conditionalAccessPolicy.conditions = conditions;
ConditionalAccessGrantControls grantControls = new ConditionalAccessGrantControls();
grantControls.operator = "OR";
LinkedList<String> builtInControlsList = new LinkedList<String>();
builtInControlsList.add("mfa");
grantControls.builtInControls = builtInControlsList;
conditionalAccessPolicy.grantControls = grantControls;

graphClient.identity().conditionalAccess().policies()
	.buildRequest()
	.post(conditionalAccessPolicy);

```