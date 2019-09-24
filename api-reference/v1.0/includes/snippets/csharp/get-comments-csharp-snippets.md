---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var comments = await graphClient.Drive.Root.Workbook.Comments
	.Request()
	.GetAsync();

```