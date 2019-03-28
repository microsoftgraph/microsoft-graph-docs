
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var drives = await graphClient.Drives["{driveId}"]
	.Request()
	.GetAsync();

```