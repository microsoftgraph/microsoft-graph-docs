
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var search = await graphClient.Me.Drive.Search('{search-query}')
	.Request()
	.GetAsync();

```