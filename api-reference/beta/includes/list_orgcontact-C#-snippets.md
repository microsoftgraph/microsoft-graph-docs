
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var contacts = await graphClient.Contacts
	.Request()
	.GetAsync();

```