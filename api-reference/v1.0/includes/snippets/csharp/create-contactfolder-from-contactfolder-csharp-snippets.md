---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contactFolder = new ContactFolder
{
	DisplayName = "Family"
};

await graphClient.Me.ContactFolders["{contactFolder-id}"].ChildFolders
	.Request()
	.AddAsync(contactFolder);

```