---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conditionalAccessPolicy = new ConditionalAccessPolicy
{
	DisplayName = "Require MFA to EXO from non-compliant devices.",
	State = ConditionalAccessPolicyState.Enabled,
	Conditions = new ConditionalAccessConditionSet
	{
		Applications = new ConditionalAccessApplications
		{
			IncludeApplications = new List<String>()
			{
				"00000002-0000-0ff1-ce00-000000000000"
			}
		},
		Users = new ConditionalAccessUsers
		{
			IncludeGroups = new List<String>()
			{
				"ba8e7ded-8b0f-4836-ba06-8ff1ecc5c8ba"
			}
		}
	},
	GrantControls = new ConditionalAccessGrantControls
	{
		Operator = "OR",
		BuiltInControls = new List<ConditionalAccessGrantControl>()
		{
			ConditionalAccessGrantControl.Mfa
		}
	}
};

await graphClient.Identity.ConditionalAccess.Policies
	.Request()
	.AddAsync(conditionalAccessPolicy);

```