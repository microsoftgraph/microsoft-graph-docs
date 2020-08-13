---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var ediscoveryCase = new EdiscoveryCase
{
	DisplayName = "My Case 1"
};

await graphClient.Compliance.Ediscovery.Cases
	.Request()
	.AddAsync(ediscoveryCase);

```