
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Me.Drive.Items["{id}"].Workbook
	.refreshSession(this);
	.Request()
	.PostAsync()

```