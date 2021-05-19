---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityApiConnector = new IdentityApiConnector
{
	DisplayName = "Test API",
	TargetUrl = "https://someotherapi.com/api",
	AuthenticationConfiguration = new Pkcs12Certificate
	{
		Pkcs12Value = "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA",
		Password = "CertificatePassword"
	}
};

await graphClient.Identity.ApiConnectors
	.Request()
	.AddAsync(identityApiConnector);

```