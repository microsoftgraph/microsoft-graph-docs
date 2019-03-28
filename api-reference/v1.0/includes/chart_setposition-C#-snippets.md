
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var startCell = "startCell-value";

var endCell = "endCell-value";

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts["{name}"]
	.setPosition(startCell,endCell);
	.Request()
	.PostAsync()

```