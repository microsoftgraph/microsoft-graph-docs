---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var members = await graphClient.Teams["{team-id}"].Members
	.Request()
	.Filter("roles/any(r:r eq 'owner')")
	.GetAsync();

```