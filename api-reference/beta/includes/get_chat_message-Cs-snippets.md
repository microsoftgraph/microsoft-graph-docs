
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var chat = await graphClient.Users["{id}"].Chats["{id}"]
	.Request()
	.GetAsync();

```