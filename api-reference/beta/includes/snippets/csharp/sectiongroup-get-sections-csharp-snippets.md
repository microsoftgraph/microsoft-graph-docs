---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sections = await graphClient.Me.Onenote.SectionGroups["{id}"].Sections
	.Request()
	.GetAsync();

```