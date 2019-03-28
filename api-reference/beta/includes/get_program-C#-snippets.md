
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var programs = await graphClient.Programs
	.Request()
	.GetAsync();

```