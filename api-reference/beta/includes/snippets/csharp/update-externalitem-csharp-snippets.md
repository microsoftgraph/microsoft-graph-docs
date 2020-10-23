---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var externalItem = new ExternalItem
{
	Acl = new List<Acl>()
	{
		new Acl
		{
			Type = AclType.Everyone,
			Value = "67a141d8-cf4e-4528-ba07-bed21bfacd2d",
			AccessType = AccessType.Grant,
			IdentitySource = "azureActiveDirectory"
		}
	}
};

await graphClient.Connections["contosohr"].Items["TSP228082938"]
	.Request()
	.UpdateAsync(externalItem);

```