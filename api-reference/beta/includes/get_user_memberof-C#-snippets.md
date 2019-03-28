
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var memberOf = await graphClient.Me.MemberOf
	.Request()
	.GetAsync();

```