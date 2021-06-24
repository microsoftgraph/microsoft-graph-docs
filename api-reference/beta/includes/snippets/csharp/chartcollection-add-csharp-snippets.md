---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var type = "ColumnStacked";

var sourceData = "A1:B1";

var seriesBy = "Auto";

await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].Charts
	.Add(type,seriesBy,sourceData)
	.Request()
	.PostAsync();

```