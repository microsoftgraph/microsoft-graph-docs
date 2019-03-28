
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var schools = await graphClient.Education.Me.Schools
	.Request()
	.GetAsync();

```