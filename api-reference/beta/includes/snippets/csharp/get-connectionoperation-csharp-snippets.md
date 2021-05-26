---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var connectionOperation = await graphClient.Connections["{externalConnectors.externalConnection-id}"].Operations["{externalConnectors.connectionOperation-id}"]
	.Request()
	.GetAsync();

```