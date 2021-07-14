---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var serviceHealth = await graphClient.Admin.ServiceAnnouncement.HealthOverviews["{serviceHealth-id}"]
	.Request()
	.Expand("issues")
	.GetAsync();

```