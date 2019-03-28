
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Education.Classes["11021"].Assignments["19002"]
	.publish();
	.Request()
	.PostAsync()

```