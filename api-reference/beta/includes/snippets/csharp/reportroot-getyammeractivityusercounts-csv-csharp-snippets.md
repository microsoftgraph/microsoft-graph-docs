---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getYammerActivityUserCounts = await graphClient.Reports
	.GetYammerActivityUserCounts("D7")
	.Request()
	.GetAsync();

```