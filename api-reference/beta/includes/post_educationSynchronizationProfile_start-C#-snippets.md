
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Education.SynchronizationProfiles["{id}"]
	.start();
	.Request()
	.PostAsync()

```