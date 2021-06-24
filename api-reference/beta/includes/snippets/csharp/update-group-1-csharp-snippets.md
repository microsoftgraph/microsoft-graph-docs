---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = new Group
{
	Description = "description-value",
	DisplayName = "displayName-value"
};

await graphClient.Groups["{group-id}"]
	.Request()
	.UpdateAsync(group);

```