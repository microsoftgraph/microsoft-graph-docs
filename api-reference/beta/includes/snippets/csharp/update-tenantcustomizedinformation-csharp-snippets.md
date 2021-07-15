---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var tenantCustomizedInformation = new Microsoft.Graph.ManagedTenants.TenantCustomizedInformation
{
	TenantId = "String",
	Contacts = new List<Microsoft.Graph.ManagedTenants.TenantContactInformation>()
	{
		new TenantContactInformation
		{
		}
	},
	Website = "String"
};

await graphClient.TenantRelationships.ManagedTenants.TenantsCustomizedInformation["{managedTenants.tenantCustomizedInformation-id}"]
	.Request()
	.UpdateAsync(tenantCustomizedInformation);

```