
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var supportedTimeZones = await graphClient.Me.Outlook.SupportedTimeZones()
	.Request()
	.GetAsync();

```