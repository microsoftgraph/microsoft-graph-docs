---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var namedLocations = await graphClient.Identity.ConditionalAccess.NamedLocations
	.Request()
	.Filter("microsoft.graph.countryNamedLocation/countriesAndRegions/any(c: c eq 'CA')")
	.GetAsync();

```