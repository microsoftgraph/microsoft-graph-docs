
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var title = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts["{name}"].Title
	.Request()
	.GetAsync();

```