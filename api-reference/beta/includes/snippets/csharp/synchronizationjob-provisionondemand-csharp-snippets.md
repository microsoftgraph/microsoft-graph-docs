---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var parameters = new List<SynchronizationJobApplicationParameters>()
{
	new SynchronizationJobApplicationParameters
	{
		Subjects = new List<SynchronizationJobSubject>()
		{
			new SynchronizationJobSubject
			{
				ObjectId = "9bb0f679-a883-4a6f-8260-35b491b8b8c8",
				ObjectTypeName = "User"
			}
		},
		RuleId = "ea807875-5618-4f0a-9125-0b46a05298ca"
	}
};

await graphClient.ServicePrincipals["{servicePrincipal-id}"].Synchronization.Jobs["{synchronizationJob-id}"]
	.ProvisionOnDemand(parameters)
	.Request()
	.PostAsync();

```