---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delta = await graphClient.Me.ContactFolders["{id}"].Contacts
	.Delta()
	.Request()
	.Header("Prefer","odata.maxpagesize=2")
	.Select("displayName")
	.GetAsync();

```