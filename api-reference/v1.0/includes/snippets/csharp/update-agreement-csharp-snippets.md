---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var agreement = new Agreement
{
	DisplayName = "Sample ToU display name",
	IsViewingBeforeAcceptanceRequired = true
};

await graphClient.IdentityGovernance.TermsOfUse.Agreements["{agreement-id}"]
	.Request()
	.UpdateAsync(agreement);

```