---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var attachments = await graphClient.Groups["{id}"].Threads["{id}"].Posts["{id}"].Attachments
	.Request()
	.GetAsync();

```