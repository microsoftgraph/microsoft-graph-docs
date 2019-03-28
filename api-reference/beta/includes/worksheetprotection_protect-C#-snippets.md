
```CS

GraphServiceClient graphClient = new GraphServiceClient();

//create instance of WorkbookWorksheetProtectionOptions
var options = new WorkbookWorksheetProtectionOptions
{
	AllowFormatCells = true,
	AllowFormatColumns = true,
	AllowFormatRows = true,
	AllowInsertColumns = true,
	AllowInsertRows = true,
	AllowInsertHyperlinks = true,
	AllowDeleteColumns = true,
	AllowDeleteRows = true,
	AllowSort = true,
	AllowAutoFilter = true,
	AllowPivotTables = true,
};

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Protection
	.protect(options);
	.Request()
	.PostAsync()

```