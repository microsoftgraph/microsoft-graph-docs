---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var onenoteSection = await graphClient.Me.Onenote.Sections["{onenoteSection-id}"]
	.Request()
	.GetAsync();

```