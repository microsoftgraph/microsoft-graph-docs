---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookCommentReply = await graphClient.Drive.Items["{id}"].Workbook.Comments["{id}"].Replies["{id}"]
	.Request()
	.GetAsync();

```