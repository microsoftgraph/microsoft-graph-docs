
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var search = await graphClient.Me.Drive.Root.Search('{search-query}')
	.Request()
	.GetAsync();

```