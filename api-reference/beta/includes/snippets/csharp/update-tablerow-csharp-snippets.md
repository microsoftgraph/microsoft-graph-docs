---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookTableRow = new WorkbookTableRow
{
	Index = 99,
	Values = "values-value"
};

await graphClient.Me.Drive.Items["{driveItem-id}"].Workbook.Tables["{workbookTable-id}"].Rows["{workbookTableRow-id}"]
	.Request()
	.UpdateAsync(workbookTableRow);

```