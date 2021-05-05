---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var legalHold = new Microsoft.Graph.Ediscovery.LegalHold
{
	Description = "String",
	CreatedBy = new IdentitySet
	{
	},
	IsEnabled = false,
	Status = Microsoft.Graph.Ediscovery.LegalHoldStatus.Pending,
	ContentQuery = "String",
	Errors = new List<String>()
	{
		"String"
	},
	DisplayName = "String"
};

await graphClient.Compliance.Ediscovery.Cases["{ediscovery.case-id}"].LegalHolds
	.Request()
	.AddAsync(legalHold);

```