
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var errors = await graphClient.Education.SynchronizationProfiles["{id}"].Errors
	.Request()
	.GetAsync();

```