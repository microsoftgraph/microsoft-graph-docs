
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of Contact
var contacts = new Contact
{
	ParentFolderId = "parentFolderId-value",
	Birthday = "datetime-value",
	FileAs = "fileAs-value",
	DisplayName = "displayName-value",
	GivenName = "givenName-value",
	Initials = "initials-value",
};

await graphClient.Me.ContactFolders["{id}"].Contacts
	.Request()
	.AddAsync(contacts);

```