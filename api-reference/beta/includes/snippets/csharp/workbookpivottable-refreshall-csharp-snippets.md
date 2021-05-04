---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Drive.Root.Workbook.Worksheets["{workbookWorksheet-id}"].PivotTables
	.RefreshAll()
	.Request()
	.PostAsync();

```