---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookRangeFont = new WorkbookRangeFont
{
	Underline = "Single",
	Color = "#FFFFFF",
	Size = 26
};

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{sheet-id}"]
	.Range("$C$1").Format.Font
	.Request()
	.UpdateAsync(workbookRangeFont);

```