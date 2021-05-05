---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contacts = await graphClient.Me.ContactFolders["{contactFolder-id}"].Contacts
	.Request()
	.GetAsync();

```