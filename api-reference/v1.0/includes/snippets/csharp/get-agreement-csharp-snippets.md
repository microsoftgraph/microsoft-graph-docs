---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var agreement = await graphClient.IdentityGovernance.TermsOfUse.Agreements["{agreement-id}"]
	.Request()
	.Expand("files")
	.GetAsync();

```