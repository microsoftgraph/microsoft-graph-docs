
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var sites = await graphClient.Sites
	.Request()
	.Filter("siteCollection/root ne null")
	.GetAsync();

```