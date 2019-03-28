
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var protection = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Protection
	.Request()
	.GetAsync();

```