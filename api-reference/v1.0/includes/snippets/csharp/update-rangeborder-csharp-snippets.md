---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookRangeBorder = new WorkbookRangeBorder
{
	Color = "color-value",
	Style = "style-value",
	SideIndex = "sideIndex-value",
	Weight = "weight-value"
};

await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Names["{workbookNamedItem-id}"]
	.Range().Format.Borders["{workbookRangeBorder-id}"]
	.Request()
	.UpdateAsync(workbookRangeBorder);

```