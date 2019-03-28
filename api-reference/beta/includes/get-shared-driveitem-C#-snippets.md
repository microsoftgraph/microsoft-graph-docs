
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var driveItem = await graphClient.Shares["{shareIdOrUrl}"].DriveItem
	.Request()
	.GetAsync();

```