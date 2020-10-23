---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var webUrl = "webUrl value";

await graphClient.Me.Onenote.Notebooks
	.GetNotebookFromWebUrl(webUrl)
	.Request()
	.PostAsync();

```