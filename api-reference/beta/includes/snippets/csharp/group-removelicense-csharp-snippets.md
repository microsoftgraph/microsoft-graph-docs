---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var addLicenses = new List<AssignedLicense>()
{
};

var removeLicenses = new List<Guid>()
{
	Guid.Parse("skuId-value-1"),
	Guid.Parse("skuId-value-2")
};

await graphClient.Groups["{group-id}"]
	.AssignLicense(addLicenses,removeLicenses)
	.Request()
	.PostAsync();

```