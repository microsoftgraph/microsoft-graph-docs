
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Education.Classes["11021"].Assignments["19002"].Submissions["850f51b7"]
	.unsubmit();
	.Request()
	.PostAsync()

```