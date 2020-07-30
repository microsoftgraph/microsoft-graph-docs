---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var application = new Application
{
	OnPremisesPublishing = new OnPremisesPublishing
	{
		SingleSignOnSettings = new OnPremisesPublishingSingleSignOn
		{
			KerberosSignOnSettings = new KerberosSignOnSettings
			{
				KerberosServicePrincipalName = "HTTP/iwademo.contoso.com",
				KerberosSignOnMappingAttributeType = KerberosSignOnMappingAttributeType.UserPrincipalName
			},
			SingleSignOnMode = SingleSignOnMode.OnPremisesKerberos
		}
	}
};

await graphClient.Applications["bf21f7e9-9d25-4da2-82ab-7fdd85049f83"]
	.Request()
	.UpdateAsync(application);

```