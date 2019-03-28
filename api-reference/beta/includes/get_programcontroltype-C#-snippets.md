
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var programControlTypes = await graphClient.ProgramControlTypes
	.Request()
	.GetAsync();

```