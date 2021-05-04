---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var administrativeUnit = new AdministrativeUnit
{
	DisplayName = "Seattle District Technical Schools",
	Description = "Seattle district technical schools administration",
	Visibility = "HiddenMembership"
};

await graphClient.Directory.AdministrativeUnits
	.Request()
	.AddAsync(administrativeUnit);

```