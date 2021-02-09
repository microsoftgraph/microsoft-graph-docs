---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var administrativeUnit = new AdministrativeUnit
{
	DisplayName = "displayName-value",
	Description = "description-value",
	Visibility = "visibility-value"
};

await graphClient.Directory.AdministrativeUnits["{id}"]
	.Request()
	.UpdateAsync(administrativeUnit);

```