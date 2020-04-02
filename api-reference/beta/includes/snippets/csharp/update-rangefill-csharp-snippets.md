---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookRangeFill = new WorkbookRangeFill
{
	Color = "color-value"
};

await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"]
	.Range().Format.Fill
	.Request()
	.UpdateAsync(workbookRangeFill);

```