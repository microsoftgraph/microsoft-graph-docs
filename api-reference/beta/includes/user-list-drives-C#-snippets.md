
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var drives = await graphClient.Users["{userId}"].Drives
	.Request()
	.GetAsync();

```