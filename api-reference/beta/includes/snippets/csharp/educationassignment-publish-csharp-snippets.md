---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var @string = await graphClient.Education.Classes["11012"].Assignments["19002"]
	.GetResourcesFolderUrl()
	.Request()
	.GetAsync();

```