---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var informationProtectionLabel = await graphClient.Me.InformationProtection.Policy.Labels["{id}"]
	.Request()
	.GetAsync();

```