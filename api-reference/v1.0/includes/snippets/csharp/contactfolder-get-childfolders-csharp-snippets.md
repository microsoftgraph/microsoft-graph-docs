---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var childFolders = await graphClient.Me.ContactFolders["{contactFolder-id}"].ChildFolders
	.Request()
	.GetAsync();

```