
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var findRooms = await graphClient.Me.FindRooms('Building2Rooms@contoso.onmicrosoft.com')
	.Request()
	.GetAsync();

```