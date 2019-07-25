---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var application = new Application
{
	AllowPublicClient = false,
	DisplayName = "New display name"
};

await graphClient.Applications["{id}"]
	.Request()
	.UpdateAsync(application);

```