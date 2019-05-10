
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var drive = await graphClient.Sites["{siteId}"].Drive
	.Request()
	.GetAsync();

```
