---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conditionalAccessPolicy = new ConditionalAccessPolicy
{
	Conditions = new ConditionalAccessConditionSet
	{
		SignInRiskLevels = new List<RiskLevel>()
		{
			RiskLevel.High,
			RiskLevel.Medium,
			RiskLevel.Low
		}
	}
};

await graphClient.Identity.ConditionalAccess.Policies["{id}"]
	.Request()
	.UpdateAsync(conditionalAccessPolicy);

```