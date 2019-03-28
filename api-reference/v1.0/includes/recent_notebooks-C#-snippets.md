
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var getRecentNotebooks = await graphClient.Me.Onenote.Notebooks.GetRecentNotebooks(true)
	.Request()
	.GetAsync();

```