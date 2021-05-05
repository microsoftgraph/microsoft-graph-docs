---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityApiConnector = new IdentityApiConnector
{
	AuthenticationConfiguration = new Pkcs12Certificate
	{
		Pkcs12Value = "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA",
		Password = "secret"
	}
};

await graphClient.Identity.ApiConnectors["{identityApiConnector-id}"]
	.Request()
	.UpdateAsync(identityApiConnector);

```