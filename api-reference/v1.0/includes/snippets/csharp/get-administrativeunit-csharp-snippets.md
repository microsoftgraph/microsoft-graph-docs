---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var administrativeUnit = await graphClient.Directory.AdministrativeUnits["{administrativeUnit-id}"]
	.Request()
	.GetAsync();

```