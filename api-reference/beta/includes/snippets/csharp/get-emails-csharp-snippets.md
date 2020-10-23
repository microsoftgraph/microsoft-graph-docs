---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var emails = await graphClient.Me.Profile.Emails
	.Request()
	.GetAsync();

```