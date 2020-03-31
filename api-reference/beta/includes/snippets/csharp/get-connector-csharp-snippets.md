---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printConnector = await graphClient.Print.Connectors["{id}"]
	.Request()
	.GetAsync();

```