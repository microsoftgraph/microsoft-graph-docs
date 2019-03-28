
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var classes = await graphClient.Education.Classes["11023"]
	.Request()
	.GetAsync();

```