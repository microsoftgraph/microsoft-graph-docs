---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookPivotTable = await graphClient.Me.Drive.Root.Workbook.Worksheets["{workbookWorksheet-id}"].PivotTables["{workbookPivotTable-id}"]
	.Request()
	.GetAsync();

```