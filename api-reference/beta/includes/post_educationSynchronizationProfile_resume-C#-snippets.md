
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Education.SynchronizationProfiles["{id}"]
	.resume();
	.Request()
	.PostAsync()

```