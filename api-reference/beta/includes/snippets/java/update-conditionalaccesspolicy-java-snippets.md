---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ConditionalAccessPolicy conditionalAccessPolicy = new ConditionalAccessPolicy();
ConditionalAccessConditionSet conditions = new ConditionalAccessConditionSet();
LinkedList<RiskLevel> signInRiskLevelsList = new LinkedList<RiskLevel>();
signInRiskLevelsList.add(RiskLevel.HIGH);
signInRiskLevelsList.add(RiskLevel.MEDIUM);
signInRiskLevelsList.add(RiskLevel.LOW);
conditions.signInRiskLevels = signInRiskLevelsList;
conditionalAccessPolicy.conditions = conditions;

graphClient.identity().conditionalAccess().policies("{id}")
	.buildRequest()
	.patch(conditionalAccessPolicy);

```