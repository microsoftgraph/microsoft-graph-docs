
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"]
	.range();.Format.Fill
	.clear();
	.Request()
	.PostAsync()

```