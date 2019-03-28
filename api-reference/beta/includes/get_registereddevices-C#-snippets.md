
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var registeredDevices = await graphClient.Me.RegisteredDevices
	.Request()
	.GetAsync();

```