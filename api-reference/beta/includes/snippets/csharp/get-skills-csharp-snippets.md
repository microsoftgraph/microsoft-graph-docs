---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var skills = await graphClient.Me.Profile.Skills
	.Request()
	.GetAsync();

```