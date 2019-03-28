
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Me.Drive.Items["{item-id}"]
	.follow();
	.Request()
	.PostAsync()

```