---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookChartDataLabels = new WorkbookChartDataLabels
{
	Position = "position-value",
	ShowValue = true,
	ShowSeriesName = true,
	ShowCategoryName = true,
	ShowLegendKey = true
};

await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].Charts["{workbookChart-id}"].DataLabels
	.Request()
	.UpdateAsync(workbookChartDataLabels);

```