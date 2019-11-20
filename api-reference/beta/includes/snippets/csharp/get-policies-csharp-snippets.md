---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var policies = await graphClient.ConditionalAccess.Policies
	.Request()
	.Filter("displayName eq 'SimplePolicy1' or displayName eq 'SimplePolicy2'")
	.GetAsync();

```