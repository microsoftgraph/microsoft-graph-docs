
```CS

GraphServiceClient graphClient = new GraphServiceClient();

await graphClient.Drive.Root.Workbook.Worksheets["{id}"]
	.range();
	.columnsBefore(count);
	.Request()
	.PostAsync()

```