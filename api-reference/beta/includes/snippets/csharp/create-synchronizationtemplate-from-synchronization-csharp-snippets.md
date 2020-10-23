---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var synchronizationTemplate = new SynchronizationTemplate
{
	Id = "SCIM-Test1",
	ApplicationId = Guid.Parse("{id}"),
	FactoryTag = "CustomSCIM"
};

await graphClient.Applications["{id}"].Synchronization.Templates
	.Request()
	.AddAsync(synchronizationTemplate);

```