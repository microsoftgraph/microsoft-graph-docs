
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var contacts = await graphClient.Me.Contacts
	.Request()
	.GetAsync();

```