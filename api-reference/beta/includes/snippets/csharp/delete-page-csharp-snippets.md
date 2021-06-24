---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.Onenote.Pages["{onenotePage-id}"]
	.Request()
	.DeleteAsync();

```