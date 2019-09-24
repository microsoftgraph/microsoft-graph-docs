---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var governanceRoleSetting = new GovernanceRoleSetting
{
	AdminEligibleSettings = new List<GovernanceRuleSetting>()
	{
		new GovernanceRuleSetting
		{
			RuleIdentifier = "ExpirationRule",
			Setting = "{\"permanentAssignment\":false,\"maximumGrantPeriodInMinutes\":129600}"
		}
	}
};

await graphClient.PrivilegedAccess["azureResources"].RoleSettings["5fb5aef8-1081-4b8e-bb16-9d5d0385bab5"]
	.Request()
	.UpdateAsync(governanceRoleSetting);

```