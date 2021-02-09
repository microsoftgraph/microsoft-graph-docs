---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var presence = await graphClient.Communications.Presences["dc74d9bb-6afe-433d-8eaa-e39d80d3a647"]
	.Request()
	.GetAsync();

```