---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var namedLocation = new CountryNamedLocation
{
	DisplayName = "Named location with unknown countries and regions",
	CountriesAndRegions = new List<String>()
	{
		"US",
		"GB"
	},
	IncludeUnknownCountriesAndRegions = true
};

await graphClient.Identity.ConditionalAccess.NamedLocations
	.Request()
	.AddAsync(namedLocation);

```