---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var profileCardProperties = await graphClient.Organization["{organizationId}"].Settings.ProfileCardProperties
	.Request()
	.GetAsync();

```