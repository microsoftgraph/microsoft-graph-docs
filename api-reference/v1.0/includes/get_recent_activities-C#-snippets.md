
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var recent = await graphClient.Me.Activities.Recent()
	.Request()
	.GetAsync();

```