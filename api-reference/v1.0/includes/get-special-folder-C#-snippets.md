
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var special = await graphClient.Me.Drive.Special["{name}"]
	.Request()
	.GetAsync();

```