---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var @case = new Microsoft.Graph.Ediscovery.Case
{
	DisplayName = "My Case 1 - Renamed",
	Description = "Updated description",
	ExternalId = "Updated externalId"
};

await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"]
	.Request()
	.UpdateAsync(@case);

```