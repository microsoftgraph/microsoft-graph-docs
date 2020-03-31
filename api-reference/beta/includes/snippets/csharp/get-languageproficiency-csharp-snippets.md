---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var languageProficiency = await graphClient.Me.Profile.Languages["{id}"]
	.Request()
	.GetAsync();

```