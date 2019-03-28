
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of ContactFolder
var contactFolders = new ContactFolder
{
	ParentFolderId = "parentFolderId-value",
	DisplayName = "displayName-value",
};

await graphClient.Me.ContactFolders
	.Request()
	.AddAsync(contactFolders);

```