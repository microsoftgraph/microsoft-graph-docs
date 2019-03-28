
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Me.Drive.Items["{id}"].Workbook.Tables["{id|name}"]
	.dataBodyRange();
	.Request()
	.PostAsync()

```