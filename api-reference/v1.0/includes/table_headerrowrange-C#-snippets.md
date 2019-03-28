
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Me.Drive.Items["{id}"].Workbook.Tables["{id|name}"]
	.headerRowRange();
	.Request()
	.PostAsync()

```