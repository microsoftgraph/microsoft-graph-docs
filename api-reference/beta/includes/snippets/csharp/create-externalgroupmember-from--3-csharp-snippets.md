---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var externalGroupMember = new ExternalGroupMember
{
	Id = "1431b9c38ee647f6a",
	Type = Microsoft.Graph.ExternalConnectors.ExternalGroupMemberType.Group,
	IdentitySource = Microsoft.Graph.ExternalConnectors.IdentitySourceType.External
};

await graphClient.External.Connections["{externalConnectors.externalConnection-id}"].Groups["{externalConnectors.externalGroup-id}"].Members
	.Request()
	.AddAsync(externalGroupMember);

```