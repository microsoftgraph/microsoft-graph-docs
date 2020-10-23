---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookComment = await graphClient.Drive.Items["{id}"].Workbook.Comments["{id}"]
	.Request()
	.GetAsync();

```