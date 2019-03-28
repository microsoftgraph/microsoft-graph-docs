
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var schools = await graphClient.Education.Schools["{school-id}"]
	.Request()
	.GetAsync();

```