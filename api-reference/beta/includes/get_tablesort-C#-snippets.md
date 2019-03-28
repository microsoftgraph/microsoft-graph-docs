
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var sort = await graphClient.Me.Drive.Items["{id}"].Workbook.Tables["{id|name}"].Sort
	.Request()
	.GetAsync();

```