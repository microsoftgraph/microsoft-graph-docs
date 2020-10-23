---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var comments = await graphClient.Drive.Items["{id}"].Workbook.Comments
	.Request()
	.GetAsync();

```