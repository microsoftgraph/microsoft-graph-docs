
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var activities = await graphClient.Me.Drive.Activities
	.Request()
	.GetAsync();

```