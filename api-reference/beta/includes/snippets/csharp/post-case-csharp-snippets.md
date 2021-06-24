---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var @case = new Microsoft.Graph.Ediscovery.Case
{
	DisplayName = "My Case 1"
};

await graphClient.Compliance.Ediscovery.Cases
	.Request()
	.AddAsync(@case);

```