---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var rows = await graphClient.Me.Drive.Root.Workbook.Worksheets["{workbookWorksheet-id}"]
	.Range("A1:Z10")
	.VisibleView().Rows
	.Request()
	.GetAsync();

```