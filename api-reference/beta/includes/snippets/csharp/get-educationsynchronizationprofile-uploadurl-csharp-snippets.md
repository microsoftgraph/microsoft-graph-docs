---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var @string = await graphClient.Education.SynchronizationProfiles["{id}"]
	.UploadUrl()
	.Request()
	.GetAsync();

```