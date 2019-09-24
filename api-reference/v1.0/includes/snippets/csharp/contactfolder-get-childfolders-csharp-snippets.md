---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var childFolders = await graphClient.Me.ContactFolders["{id}"].ChildFolders
	.Request()
	.GetAsync();

```