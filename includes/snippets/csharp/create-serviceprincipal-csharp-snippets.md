---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var servicePrincipal = new ServicePrincipal
{
	AppId = "d7fbfe28-c60e-46d2-8335-841923950d3b",
	Tags = new List<String>()
	{
		"WindowsAzureActiveDirectoryIntegratedApp",
		"WindowsAzureActiveDirectoryOnPremApp"
	}
};

await graphClient.Serviceprincipals
	.Request()
	.AddAsync(servicePrincipal);

```