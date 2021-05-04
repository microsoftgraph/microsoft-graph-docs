---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var legalHolds = await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].LegalHolds
	.Request()
	.GetAsync();

```