---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var synchronizationTemplate = new SynchronizationTemplate
{
	Id = "Slack",
	ApplicationId = Guid.Parse("{id}"),
	FactoryTag = "CustomSCIM"
};

await graphClient.Applications["{id}"].Synchronization.Templates["{templateId}"]
	.Request()
	.Header("Authorization","Bearer <token>")
	.PutAsync(synchronizationTemplate);

```