---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookWorksheet = new WorkbookWorksheet
{
	Position = 99,
	Name = "name-value",
	Visibility = "visibility-value"
};

await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Worksheets["{workbookWorksheet-id}"]
	.Request()
	.UpdateAsync(workbookWorksheet);

```