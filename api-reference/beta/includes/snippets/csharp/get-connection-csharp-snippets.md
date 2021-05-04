---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var externalConnection = await graphClient.Connections["{externalConnectors.externalConnection-id}"]
	.Request()
	.GetAsync();

```