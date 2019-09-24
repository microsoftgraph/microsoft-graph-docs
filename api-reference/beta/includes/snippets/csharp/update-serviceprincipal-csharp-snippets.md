---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var servicePrincipal = new ServicePrincipal
{
	AccountEnabled = true,
	AddIns = new List<AddIn>()
	{
		new AddIn
		{
			Id = Guid.Parse("id-value"),
			Type = "type-value",
			Properties = new List<KeyValue>()
			{
				new KeyValue
				{
					Key = "key-value",
					Value = "value-value"
				}
			}
		}
	},
	AppDisplayName = "appDisplayName-value",
	AppId = "appId-value",
	AppOwnerOrganizationId = Guid.Parse("appOwnerOrganizationId-value"),
	AppRoleAssignmentRequired = true
};

await graphClient.ServicePrincipals["{id}"]
	.Request()
	.UpdateAsync(servicePrincipal);

```