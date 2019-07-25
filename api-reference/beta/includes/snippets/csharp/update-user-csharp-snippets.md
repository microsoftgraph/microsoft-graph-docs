---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = new User
{
	AccountEnabled = true,
	AssignedLicenses = new List<AssignedLicense>()
	{
		new AssignedLicense
		{
			DisabledPlans = new List<String>()
			{
				"bea13e0c-3828-4daa-a392-28af7ff61a0f"
			},
			SkuId = "skuId-value"
		}
	},
	AssignedPlans = new List<AssignedPlan>()
	{
		new AssignedPlan
		{
			AssignedDateTime = "2016-10-19T10:37:00Z",
			CapabilityStatus = "capabilityStatus-value",
			Service = "service-value",
			ServicePlanId = "bea13e0c-3828-4daa-a392-28af7ff61a0f"
		}
	},
	BusinessPhones = new List<String>()
	{
		"businessPhones-value"
	},
	City = "city-value"
};

await graphClient.Me
	.Request()
	.UpdateAsync(user);

```