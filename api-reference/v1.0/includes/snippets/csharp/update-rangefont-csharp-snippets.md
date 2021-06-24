---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookRangeFont = new WorkbookRangeFont
{
	Bold = true,
	Color = "color-value",
	Italic = true,
	Name = "name-value",
	Size = 99,
	Underline = "underline-value"
};

await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Names["{workbookNamedItem-id}"]
	.Range().Format.Font
	.Request()
	.UpdateAsync(workbookRangeFont);

```