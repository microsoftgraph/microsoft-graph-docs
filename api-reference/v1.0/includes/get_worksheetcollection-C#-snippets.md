
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var worksheets = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets
	.Request()
	.GetAsync();

```