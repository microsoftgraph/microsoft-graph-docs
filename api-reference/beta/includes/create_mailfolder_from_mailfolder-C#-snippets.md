
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of MailFolder
var childFolders = new MailFolder
{
	DisplayName = "displayName-value",
};

await graphClient.Me.MailFolders["{id}"].ChildFolders
	.Request()
	.AddAsync(childFolders);

```