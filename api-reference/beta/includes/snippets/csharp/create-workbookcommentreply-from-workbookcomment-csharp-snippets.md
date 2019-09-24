---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookCommentReply = new WorkbookCommentReply
{
	Content = "This is my reply to the comment.",
	ContentType = "plain"
};

await graphClient.Drive.Root.Workbook.Comments["{id}"].Replies
	.Request()
	.AddAsync(workbookCommentReply);

```