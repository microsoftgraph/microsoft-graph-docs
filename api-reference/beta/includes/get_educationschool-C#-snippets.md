
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var schools = await graphClient.Education.Schools["10001"]
	.Request()
	.GetAsync();

```