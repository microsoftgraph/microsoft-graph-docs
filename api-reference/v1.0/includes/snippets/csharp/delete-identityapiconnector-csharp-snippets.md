---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Identity.ApiConnectors["{identityApiConnector-id}"]
	.Request()
	.DeleteAsync();

```