---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookCommentReply = await graphClient.Drive.Root.Workbook.Comments["{id}"].Replies["{id}"]
	.Request()
	.GetAsync();

```