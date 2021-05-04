---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var key = "key-value";

await graphClient.TrustFramework.KeySets["{trustFrameworkKeySet-id}"]
	.UploadCertificate(key)
	.Request()
	.PostAsync();

```