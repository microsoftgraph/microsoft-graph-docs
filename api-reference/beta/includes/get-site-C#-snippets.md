
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var sites = await graphClient.Sites["{site-id}"]
	.Request()
	.GetAsync();

```