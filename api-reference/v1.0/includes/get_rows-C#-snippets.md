
```CS

GraphServiceClient graphClient = new GraphServiceClient();

var rows = await graphClient.Me.Drive.Root.Workbook.Worksheets["{id}"].Range('A1:Z10').VisibleView().Rows
	.Request()
	.GetAsync();

```