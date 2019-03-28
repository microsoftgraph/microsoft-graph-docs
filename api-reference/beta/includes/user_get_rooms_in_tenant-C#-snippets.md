
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var findRooms = await graphClient.Me.FindRooms()
	.Request()
	.GetAsync();

```