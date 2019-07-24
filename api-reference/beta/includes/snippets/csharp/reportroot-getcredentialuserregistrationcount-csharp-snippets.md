---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var getCredentialUserRegistrationCount = await graphClient.Reports
	.GetCredentialUserRegistrationCount()
	.Request()
	.GetAsync();

```