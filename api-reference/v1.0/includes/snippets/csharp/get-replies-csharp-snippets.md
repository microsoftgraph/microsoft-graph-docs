---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var replies = await graphClient.Drive.Root.Workbook.Comments["{id}"].Replies
	.Request()
	.GetAsync();

```