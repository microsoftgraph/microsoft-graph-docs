---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var externalItem = new Microsoft.Graph.ExternalConnectors.ExternalItem
{
	Acl = new List<Microsoft.Graph.ExternalConnectors.Acl>()
	{
		new Microsoft.Graph.ExternalConnectors.Acl
		{
			Type = Microsoft.Graph.ExternalConnectors.AclType.Everyone,
			Value = "67a141d8-cf4e-4528-ba07-bed21bfacd2d",
			AccessType = Microsoft.Graph.ExternalConnectors.AccessType.Grant,
			IdentitySource = Microsoft.Graph.ExternalConnectors.IdentitySourceType.AzureActiveDirectory
		}
	}
};

await graphClient.Connections["{externalConnectors.externalConnection-id}"].Items["{externalConnectors.externalItem-id}"]
	.Request()
	.UpdateAsync(externalItem);

```