---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var secureScoreControlProfile = await graphClient.Security.SecureScoreControlProfiles["{secureScoreControlProfile-id}"]
	.Request()
	.GetAsync();

```