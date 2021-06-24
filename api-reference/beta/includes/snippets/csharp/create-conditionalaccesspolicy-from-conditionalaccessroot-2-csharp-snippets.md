---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conditionalAccessPolicy = new ConditionalAccessPolicy
{
	DisplayName = "Block access to EXO non-trusted regions.",
	State = ConditionalAccessPolicyState.Enabled,
	Conditions = new ConditionalAccessConditionSet
	{
		ClientAppTypes = new List<ConditionalAccessClientApp>()
		{
			ConditionalAccessClientApp.All
		},
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
		},
		Locations = new ConditionalAccessLocations
		{
			IncludeLocations = new List<String>()
			{
				"198ad66e-87b3-4157-85a3-8a7b51794ee9"
			}
		}
	},
	GrantControls = new ConditionalAccessGrantControls
	{
		Operator = "OR",
		BuiltInControls = new List<ConditionalAccessGrantControl>()
		{
			ConditionalAccessGrantControl.Block
		}
	}
};

await graphClient.Identity.ConditionalAccess.Policies
	.Request()
	.AddAsync(conditionalAccessPolicy);

```