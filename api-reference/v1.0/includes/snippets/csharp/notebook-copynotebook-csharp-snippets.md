---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupId = "groupId-value";

var renameAs = "renameAs-value";

await graphClient.Me.Onenote.Notebooks["{id}"]
	.CopyNotebook(groupId,renameAs,notebookFolder,siteCollectionId,siteId)
	.Request()
	.PostAsync();

```