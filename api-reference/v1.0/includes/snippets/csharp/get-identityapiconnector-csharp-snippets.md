---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityApiConnector = await graphClient.Identity.ApiConnectors["{identityApiConnector-id}"]
	.Request()
	.GetAsync();

```