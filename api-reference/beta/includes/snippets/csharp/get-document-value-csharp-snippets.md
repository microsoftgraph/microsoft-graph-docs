---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var stream = await graphClient.Print.Printers["fcb0bc53-a446-41d0-bfc3-5c56cdbb0f2a"].Jobs["46140"].Documents["bd260b1a-044e-4ca6-afa9-17d9a587d254"].Content
	.Request()
	.GetAsync();

```