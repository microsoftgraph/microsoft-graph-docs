---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var administrativeUnits = await graphClient.AdministrativeUnits
	.Request()
	.GetAsync();

```