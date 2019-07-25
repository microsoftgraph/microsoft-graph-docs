---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var addLicenses = new List<AssignedLicense>()
{
	new AssignedLicense
	{
		DisabledPlans = new List<String>()
		{
			"11b0131d-43c8-4bbb-b2c8-e80f9a50834a"
		},
		SkuId = "skuId-value-1"
	},
	new AssignedLicense
	{
		DisabledPlans = new List<String>()
		{
			"a571ebcc-fqe0-4ca2-8c8c-7a284fd6c235"
		},
		SkuId = "skuId-value-2"
	}
};

var removeLicenses = new List<String>()
{
};

await graphClient.Me
	.AssignLicense(addLicenses,removeLicenses)
	.Request()
	.PostAsync();

```