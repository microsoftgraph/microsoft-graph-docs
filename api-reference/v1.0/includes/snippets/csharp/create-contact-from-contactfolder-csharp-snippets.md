---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contact = new Contact
{
	ParentFolderId = "parentFolderId-value",
	Birthday = DateTimeOffset.Parse("datetime-value"),
	FileAs = "fileAs-value",
	DisplayName = "displayName-value",
	GivenName = "givenName-value",
	Initials = "initials-value"
};

await graphClient.Me.ContactFolders["{id}"].Contacts
	.Request()
	.AddAsync(contact);

```