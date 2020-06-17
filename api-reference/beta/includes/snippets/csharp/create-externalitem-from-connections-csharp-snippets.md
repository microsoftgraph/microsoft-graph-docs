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
		AdditionalData = new Dictionary<string, object>()
		{
			{"title", "Error in the payment gateway"},
			{"priority", "1"},
			{"assignee", "john@contoso.com"}
		}
	},
	Content = new ExternalItemContent
	{
		Value = "<h1>Error in payment gateway</h1><p>Error details...</p>",
		Type = ExternalItemContentType.Html
	}
};

await graphClient.Connections["contosohr"].Items["TSP228082938"]
	.Request()
	.PutAsync(externalItem);

```