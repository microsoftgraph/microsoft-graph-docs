---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var issues = await graphClient.Admin.ServiceAnnouncement.Issues
	.Request()
	.GetAsync();

```