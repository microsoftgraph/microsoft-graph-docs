---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var secureScoreControlProfiles = await graphClient.Security.SecureScoreControlProfiles
	.Request()
	.GetAsync();

```