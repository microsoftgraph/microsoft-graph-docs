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
			Type = AclType.User,
			Value = "49103559-feac-4575-8b94-254814dfca72",
			AccessType = AccessType.Deny,
			IdentitySource = "Azure Active Directory"
		}
	},
	Properties = new Properties
	{
		Title = "Error in the payment gateway",
		Priority = 1,
		Assignee = "john@contoso.com"
	},
	Content = "Textual content of the file"
};

await graphClient.Connections["contosohr"].Items["TSP228082938"]
	.Request()
	.PutAsync(externalItem);

```