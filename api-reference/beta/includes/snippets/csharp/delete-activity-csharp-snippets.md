---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.Activities["13881113971988980728"]
	.Request()
	.DeleteAsync();

```