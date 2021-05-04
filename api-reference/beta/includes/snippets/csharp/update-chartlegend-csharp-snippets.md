---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookChartLegend = new WorkbookChartLegend
{
	Visible = true,
	Position = "position-value",
	Overlay = true
};

await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].Charts["{workbookChart-id}"].Legend
	.Request()
	.UpdateAsync(workbookChartLegend);

```