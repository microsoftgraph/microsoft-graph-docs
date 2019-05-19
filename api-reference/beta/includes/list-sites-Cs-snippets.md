
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sites = await graphClient.Sites
	.Request()
	.Filter("siteCollection/root ne null")
	.GetAsync();

```