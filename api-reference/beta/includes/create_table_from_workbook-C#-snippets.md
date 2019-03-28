
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var address = "A1:D8";

var hasHeaders = False;

await graphClient.Me.Drive.Items["{id}"].Workbook.Tables
	.add(address,hasHeaders);
	.Request()
	.PostAsync()

```