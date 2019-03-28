
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of Contact
var contacts = new Contact
{
	ParentFolderId = "parentFolderId-value",
	Birthday = "2016-10-19T10:37:00Z",
	FileAs = "fileAs-value",
	DisplayName = "displayName-value",
	GivenName = "givenName-value",
	Initials = "initials-value",
};

await graphClient.Me.ContactFolders["{id}"].Contacts
	.Request()
	.AddAsync(contacts);

```