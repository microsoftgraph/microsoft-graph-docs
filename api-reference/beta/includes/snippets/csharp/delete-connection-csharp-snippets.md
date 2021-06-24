---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Connections["{externalConnectors.externalConnection-id}"]
	.Request()
	.DeleteAsync();

```