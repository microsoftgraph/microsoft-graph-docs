---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var teamworkBot = await graphClient.AppCatalogs.TeamsApps["e4c5c249-bb4b-419e-b7c5-b1d98559368b"].AppDefinitions["ZTRjNWMyNDktYmI0Yi00MTllLWI3YzUtYjFkOTg1NTkzNjhiIyMyLjAuMSMjUHVibGlzaGVk"].Bot
	.Request()
	.GetAsync();

```