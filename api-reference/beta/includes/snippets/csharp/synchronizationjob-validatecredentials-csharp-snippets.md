---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var credentials = new List<SynchronizationSecretKeyStringValuePair>()
{
	new SynchronizationSecretKeyStringValuePair
	{
		Key = SynchronizationSecret.UserName,
		Value = "user@domain.com"
	},
	new SynchronizationSecretKeyStringValuePair
	{
		Key = SynchronizationSecret.Password,
		Value = "password-value"
	}
};

await graphClient.ServicePrincipals["{id}"].Synchronization.Jobs["{id}"]
	.ValidateCredentials(null,null,null,credentials)
	.Request()
	.PostAsync();

```