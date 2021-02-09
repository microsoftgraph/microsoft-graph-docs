---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var profile = await graphClient.Me.Profile
	.Request()
	.Expand("skills($select=displayName)")
	.GetAsync();

```