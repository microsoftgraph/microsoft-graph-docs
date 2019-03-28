
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var contacts = await graphClient.Me.Contacts
	.Request()
	.Select("displayName,emailAddresses")
	.GetAsync();

```