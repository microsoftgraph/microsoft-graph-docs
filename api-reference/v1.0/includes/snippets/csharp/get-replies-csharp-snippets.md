---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var replies = await graphClient.Drive.Items["{id}"].Workbook.Comments["{id}"].Replies
	.Request()
	.GetAsync();

```