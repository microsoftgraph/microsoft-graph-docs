---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personAnnotation = await graphClient.Me.Profile.Notes["{id}"]
	.Request()
	.GetAsync();

```