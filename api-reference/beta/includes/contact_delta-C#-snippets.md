
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var delta = await graphClient.Me.ContactFolders["{id}"].Contacts.Delta()
	.Request()
	.Select("displayName")
	.GetAsync();

```