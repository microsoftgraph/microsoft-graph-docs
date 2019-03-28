
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var supportedTimeZones = await graphClient.Me.Outlook.SupportedTimeZones(microsoft.graph.timeZoneStandard'Iana')
	.Request()
	.GetAsync();

```