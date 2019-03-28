
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var items = await graphClient.Sites["{site-id}"].Lists["{list-id}"].Items
	.Request()
	.GetAsync();

```