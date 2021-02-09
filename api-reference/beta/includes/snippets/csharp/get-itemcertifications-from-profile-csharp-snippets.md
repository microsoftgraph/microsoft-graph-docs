---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var certifications = await graphClient.Me.Profile.Certifications
	.Request()
	.GetAsync();

```