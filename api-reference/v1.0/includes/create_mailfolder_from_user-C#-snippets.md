
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of MailFolder
var mailFolders = new MailFolder
{
	DisplayName = "displayName-value",
};

await graphClient.Me.MailFolders
	.Request()
	.AddAsync(mailFolders);

```