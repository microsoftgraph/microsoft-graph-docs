---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = new Group
{
	Description = "Contoso Life v2.0",
	DisplayName = "Contoso Life Renewed"
};

await graphClient.Groups["{group-id}"]
	.Request()
	.UpdateAsync(group);

```