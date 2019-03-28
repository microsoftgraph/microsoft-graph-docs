
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var drives = await graphClient.Sites["{siteId}"].Drives
	.Request()
	.GetAsync();

```