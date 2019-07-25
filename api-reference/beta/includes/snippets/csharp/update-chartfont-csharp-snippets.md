---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookChartFont = new WorkbookChartFont
{
	Bold = true,
	Color = "color-value",
	Italic = true,
	Name = "name-value",
	Size = 99,
	Underline = "underline-value"
};

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts["{name}"].Axes.ValueAxis.Format.Font
	.Request()
	.UpdateAsync(workbookChartFont);

```