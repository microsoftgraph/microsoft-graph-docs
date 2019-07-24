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
		SkuId = "guid"
	}
};

var removeLicenses = new List<String>()
{
	"bea13e0c-3828-4daa-a392-28af7ff61a0f"
};

await graphClient.Me
	.AssignLicense(addLicenses,removeLicenses)
	.Request()
	.PostAsync();

```