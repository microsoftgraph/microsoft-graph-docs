
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var agreements = await graphClient.Agreements["<id>"]
	.Request()
	.Expand("files")
	.GetAsync();

```