---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var addLicenses = new List<AssignedLicense>()
{
	new AssignedLicense
	{
		DisabledPlans = new List<Guid>()
		{
			Guid.Parse("11b0131d-43c8-4bbb-b2c8-e80f9a50834a")
		},
		SkuId = Guid.Parse("skuId-value-1")
	},
	new AssignedLicense
	{
		DisabledPlans = new List<Guid>()
		{
			Guid.Parse("a571ebcc-fqe0-4ca2-8c8c-7a284fd6c235")
		},
		SkuId = Guid.Parse("skuId-value-2")
	}
};

var removeLicenses = new List<Guid>()
{
};

await graphClient.Me
	.AssignLicense(addLicenses,removeLicenses)
	.Request()
	.PostAsync();

```