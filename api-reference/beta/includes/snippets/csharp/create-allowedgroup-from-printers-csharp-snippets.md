---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printIdentity = new PrintIdentity
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id","https://graph.microsoft.com/beta/groups/{id}"}
	}
};

await graphClient.Print.Printers["{id}"].AllowedGroups.References
	.Request()
	.AddAsync(printIdentity);

```