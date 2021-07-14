---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var healthOverviews = await graphClient.Admin.ServiceAnnouncement.HealthOverviews
	.Request()
	.Expand("issues")
	.GetAsync();

```