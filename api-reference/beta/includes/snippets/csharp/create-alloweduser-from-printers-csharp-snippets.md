---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var printUserIdentity = new PrintUserIdentity
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"@odata.id","https://graph.microsoft.com/beta/users/{id}"}
	}
};

await graphClient.Print.PrinterShares["{id}"].AllowedUsers.References
	.Request()
	.AddAsync(printUserIdentity);

```