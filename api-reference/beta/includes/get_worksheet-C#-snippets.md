
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var worksheets = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"]
	.Request()
	.GetAsync();

```