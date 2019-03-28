
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var contacts = await graphClient.Me.Contacts["{id}"]
	.Request()
	.GetAsync();

```