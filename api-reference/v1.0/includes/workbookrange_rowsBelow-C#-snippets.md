
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Me.Drive.Root.Workbook.Worksheets["{id}"]
	.range();
	.rowsBelow(count);
	.Request()
	.PostAsync()

```