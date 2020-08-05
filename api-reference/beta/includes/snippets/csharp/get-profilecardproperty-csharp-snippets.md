---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var profileCardProperty = await graphClient.Organization["{organizationId}"].Settings.ProfileCardProperties["{id}"]
	.Request()
	.GetAsync();

```