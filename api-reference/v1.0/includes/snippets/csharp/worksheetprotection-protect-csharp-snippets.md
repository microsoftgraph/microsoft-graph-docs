---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

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
	AllowPivotTables = true
};

await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].Protection
	.Protect(options)
	.Request()
	.PostAsync();

```