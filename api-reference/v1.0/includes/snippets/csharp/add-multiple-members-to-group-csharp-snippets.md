---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userReferences = new [] {
	"https://graph.microsoft.com/v1.0/directoryObjects/{id}",
	"https://graph.microsoft.com/v1.0/directoryObjects/{id}",
	"https://graph.microsoft.com/v1.0/directoryObjects/{id}"
};

var group = new Group
{
	AdditionalData = new Dictionary<string, object>()
	{
		{ "members@odata.bind", userReferences }
	}
};

await graphClient.Groups["{group-id}"]
	.Request()
	.UpdateAsync(group);

```
