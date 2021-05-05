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

await graphClient.ServicePrincipals["{servicePrincipal-id}"].Synchronization.Jobs["{synchronizationJob-id}"]
	.ValidateCredentials(null,null,null,credentials)
	.Request()
	.PostAsync();

```