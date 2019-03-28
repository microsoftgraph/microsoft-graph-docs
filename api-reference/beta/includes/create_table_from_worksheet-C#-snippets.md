
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var address = "";

var hasHeaders = False;

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Tables
	.add(address,hasHeaders);
	.Request()
	.PostAsync()

```