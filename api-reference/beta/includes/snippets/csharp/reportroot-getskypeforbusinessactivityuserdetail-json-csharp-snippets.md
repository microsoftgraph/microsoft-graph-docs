---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getSkypeForBusinessActivityUserDetail = await graphClient.Reports
	.GetSkypeForBusinessActivityUserDetail("D7")
	.Request()
	.GetAsync();

```