
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var address = "Sheet1!A1:D5";

var hasHeaders = True;

await graphClient.Me.Drive.Items["{id}"].Workbook.Tables
	.add(address,hasHeaders);
	.Request()
	.PostAsync()

```