---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delta = await graphClient.Me.ContactFolders["{id}"].Contacts
	.Delta()
	.Request()
	.Select("displayName")
	.GetAsync();

```