
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var tables = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Tables
	.Request()
	.GetAsync();

```