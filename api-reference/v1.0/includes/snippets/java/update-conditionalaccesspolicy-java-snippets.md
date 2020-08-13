---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConditionalAccessPolicy conditionalAccessPolicy = new ConditionalAccessPolicy();
ConditionalAccessConditionSet conditions = new ConditionalAccessConditionSet();
LinkedList<String> signInRiskLevelsList = new LinkedList<String>();
signInRiskLevelsList.add("high");
signInRiskLevelsList.add("medium");
signInRiskLevelsList.add("low");
conditions.signInRiskLevels = signInRiskLevelsList;
conditionalAccessPolicy.conditions = conditions;

graphClient.identity().conditionalAccess().policies("{id}")
	.buildRequest()
	.patch(conditionalAccessPolicy);

```