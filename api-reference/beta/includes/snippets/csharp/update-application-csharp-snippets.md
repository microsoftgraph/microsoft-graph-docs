---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var application = new Application
{
	DisplayName = "New display name"
};

await graphClient.Applications["{application-id}"]
	.Request()
	.UpdateAsync(application);

```