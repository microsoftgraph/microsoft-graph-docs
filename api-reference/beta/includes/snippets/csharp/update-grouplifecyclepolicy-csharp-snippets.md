---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groupLifecyclePolicy = new GroupLifecyclePolicy
{
	GroupLifetimeInDays = 180,
	ManagedGroupTypes = "Selected",
	AlternateNotificationEmails = "admin@contoso.com"
};

await graphClient.GroupLifecyclePolicies["{groupLifecyclePolicy-id}"]
	.Request()
	.UpdateAsync(groupLifecyclePolicy);

```