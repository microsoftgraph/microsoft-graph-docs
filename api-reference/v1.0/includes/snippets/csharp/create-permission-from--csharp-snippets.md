---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var permission = new Permission
{
	Roles = new List<String>()
	{
		"write"
	},
	GrantedToIdentities = new List<IdentitySet>()
	{
		new IdentitySet
		{
			Application = new Identity
			{
				Id = "89ea5c94-7736-4e25-95ad-3fa95f62b66e",
				DisplayName = "Contoso Time Manager App"
			}
		}
	}
};

await graphClient.Sites["{site-id}"].Permissions
	.Request()
	.AddAsync(permission);

```