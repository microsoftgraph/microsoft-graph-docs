---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contactFolder = new ContactFolder
{
	ParentFolderId = "parentFolderId-value",
	DisplayName = "displayName-value"
};

await graphClient.Me.ContactFolders
	.Request()
	.AddAsync(contactFolder);

```