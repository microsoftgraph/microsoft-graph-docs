
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var uploadUrl = await graphClient.Education.SynchronizationProfiles["{id}"].UploadUrl()
	.Request()
	.GetAsync();

```