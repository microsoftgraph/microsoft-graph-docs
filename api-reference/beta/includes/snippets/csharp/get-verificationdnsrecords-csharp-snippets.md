---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var verificationDnsRecords = await graphClient.Domains["{domain-id}"].VerificationDnsRecords
	.Request()
	.GetAsync();

```