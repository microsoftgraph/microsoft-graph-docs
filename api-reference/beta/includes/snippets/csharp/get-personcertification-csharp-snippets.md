---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var personCertification = await graphClient.Me.Profile.Certifications["{id}"]
	.Request()
	.GetAsync();

```