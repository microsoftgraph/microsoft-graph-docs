
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var joinedTeams = await graphClient.Me.JoinedTeams
	.Request()
	.GetAsync();

```