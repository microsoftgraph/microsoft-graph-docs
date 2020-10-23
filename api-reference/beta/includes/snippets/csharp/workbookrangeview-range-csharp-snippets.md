---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookRange = await graphClient.Drive.Root.Workbook.Worksheets["{id}"]
	.Range("A1:Z10")
	.VisibleView()
	.Range()
	.Request()
	.GetAsync();

```