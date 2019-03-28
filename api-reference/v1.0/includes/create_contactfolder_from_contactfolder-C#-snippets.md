
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of ContactFolder
var childFolders = new ContactFolder
{
	DisplayName = "displayName-value",
};

await graphClient.Me.ContactFolders["{id}"].ChildFolders
	.Request()
	.AddAsync(childFolders);

```