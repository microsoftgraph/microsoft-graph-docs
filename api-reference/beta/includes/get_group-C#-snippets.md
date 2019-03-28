
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var groups = await graphClient.Groups["45b7d2e7-b882-4a80-ba97-10b7a63b8fa4"]
	.Request()
	.GetAsync();

```