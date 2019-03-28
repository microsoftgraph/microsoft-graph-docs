
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var education = await graphClient.Education
	.Request()
	.GetAsync();

```