---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupId = "groupId-value";

var renameAs = "renameAs-value";

await graphClient.Me.Onenote.Notebooks["{notebook-id}"]
	.CopyNotebook(groupId,renameAs,null,null,null)
	.Request()
	.PostAsync();

```