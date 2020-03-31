---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var use = "use-value";

var k = "application-secret-to-be-uploaded";

var nbf = 1508969811;

var exp = 1508973711;

await graphClient.TrustFramework.KeySets["{id}"]
	.UploadSecret(use,k,nbf,exp)
	.Request()
	.PostAsync();

```