
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var findRoomLists = await graphClient.Me.FindRoomLists()
	.Request()
	.GetAsync();

```