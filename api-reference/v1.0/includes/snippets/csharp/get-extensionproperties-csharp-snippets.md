---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var extensionProperties = await graphClient.Applications["{id}"].ExtensionProperties
	.Request()
	.GetAsync();

```