---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookComment = await graphClient.Drive.Root.Workbook.Comments["{id}"]
	.Request()
	.GetAsync();

```