---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.ProgramControls["{programControl-id}"]
	.Request()
	.DeleteAsync();

```