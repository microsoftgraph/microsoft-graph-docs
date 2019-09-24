---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sectionGroup = await graphClient.Me.Onenote.SectionGroups["{id}"]
	.Request()
	.GetAsync();

```