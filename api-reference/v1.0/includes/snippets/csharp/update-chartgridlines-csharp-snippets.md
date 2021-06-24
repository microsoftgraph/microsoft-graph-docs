---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookChartGridlines = new WorkbookChartGridlines
{
	Visible = true
};

await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].Charts["{workbookChart-id}"].Axes.ValueAxis.MinorGridlines
	.Request()
	.UpdateAsync(workbookChartGridlines);

```