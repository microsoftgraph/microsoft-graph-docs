
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var lastColumn = await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"].Range().LastColumn()
	.Request()
	.GetAsync();

```