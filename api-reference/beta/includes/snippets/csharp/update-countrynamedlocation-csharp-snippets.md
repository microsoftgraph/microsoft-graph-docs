---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var namedLocation = new CountryNamedLocation
{
	DisplayName = "Updated named location without unknown countries and regions",
	CountriesAndRegions = new List<String>()
	{
		"CA",
		"IN"
	},
	IncludeUnknownCountriesAndRegions = false
};

await graphClient.Identity.ConditionalAccess.NamedLocations["{namedLocation-id}"]
	.Request()
	.UpdateAsync(namedLocation);

```