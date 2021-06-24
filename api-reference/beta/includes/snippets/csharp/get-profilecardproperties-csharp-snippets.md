---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var profileCardProperties = await graphClient.Organization["{organization-id}"].Settings.ProfileCardProperties
	.Request()
	.GetAsync();

```