---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workPosition = new WorkPosition
{
	IsCurrent = true
};

await graphClient.Me.Profile.Positions["{id}"]
	.Request()
	.UpdateAsync(workPosition);

```