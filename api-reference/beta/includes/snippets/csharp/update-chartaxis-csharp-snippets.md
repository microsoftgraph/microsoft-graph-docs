---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookChartAxis = new WorkbookChartAxis
{
	MajorUnit = JToken.Parse("{}"),
	Maximum = JToken.Parse("{}"),
	Minimum = JToken.Parse("{}")
};

await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"].Charts["{workbookChart-id}"].Axes.ValueAxis
	.Request()
	.UpdateAsync(workbookChartAxis);

```