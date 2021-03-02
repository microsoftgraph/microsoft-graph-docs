---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var term = await graphClient.TermStore.Groups["{groupId}"].Sets["{setId}"].Terms["{termId}"]
	.Request()
	.GetAsync();

```