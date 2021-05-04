---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var isSyncedFromOnPremises = false;

await graphClient.DirectoryObjects
	.GetAvailableExtensionProperties(isSyncedFromOnPremises)
	.Request()
	.PostAsync();

```