---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var agreementAcceptances = await graphClient.Me.AgreementAcceptances
	.Request()
	.GetAsync();

```