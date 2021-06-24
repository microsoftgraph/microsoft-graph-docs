---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var pkcs12Value = "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA";

var password = "<password>";

await graphClient.Identity.ApiConnectors["{identityApiConnector-id}"]
	.UploadClientCertificate(pkcs12Value,password)
	.Request()
	.PostAsync();

```