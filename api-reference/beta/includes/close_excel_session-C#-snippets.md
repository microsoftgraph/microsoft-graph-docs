
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Me.Drive.Items["{id}"].Workbook
	.closeSession(this);
	.Request()
	.PostAsync()

```