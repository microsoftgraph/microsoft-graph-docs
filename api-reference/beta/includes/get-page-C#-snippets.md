
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var pages = await graphClient.Sites["{site-id}"].Pages["{page-id}"]
	.Request()
	.GetAsync();

```