
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var range = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Range()
	.Request()
	.GetAsync();

```