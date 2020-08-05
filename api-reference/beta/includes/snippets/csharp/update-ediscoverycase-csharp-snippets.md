---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ediscoveryCase = new EdiscoveryCase
{
	DisplayName = "My Case 1 - Renamed",
	Description = "Updated description",
	ExternalId = "Updated externalId"
};

await graphClient.Compliance.Ediscovery.Cases["061b9a92-8926-4bd9-b41d-abf35edc7583"]
	.Request()
	.UpdateAsync(ediscoveryCase);

```