
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var classes = await graphClient.Education.Classes["{class-id}"]
	.Request()
	.GetAsync();

```