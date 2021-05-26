---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookRange = await graphClient.Drive.Root.Workbook.Worksheets["{workbookWorksheet-id}"]
	.Range()
	.RowsAbove(2)
	.Request()
	.GetAsync();

```