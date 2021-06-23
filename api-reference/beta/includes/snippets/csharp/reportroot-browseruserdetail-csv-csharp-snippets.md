---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var stream = await graphClient.Reports
	.BrowserUserDetail("D7").Content
	.Request()
	.GetAsync();

```