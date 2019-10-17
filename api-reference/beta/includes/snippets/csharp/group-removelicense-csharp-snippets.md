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

await graphClient.Groups["1ad75eeb-7e5a-4367-a493-9214d90d54d0"]
	.AssignLicense(addLicenses,removeLicenses)
	.Request()
	.PostAsync();

```