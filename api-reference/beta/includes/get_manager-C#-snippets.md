
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var manager = await graphClient.Contacts["{id}"].Manager
	.Request()
	.GetAsync();

```