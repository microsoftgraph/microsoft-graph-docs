
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var tables = await graphClient.Me.Drive.Items["{id}"].Workbook.Tables["{id|name}"]
	.Request()
	.GetAsync();

```