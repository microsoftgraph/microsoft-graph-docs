---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityApiConnector = new IdentityApiConnector
{
	DisplayName = "Test API",
	TargetUrl = "https://someapi.com/api",
	AuthenticationConfiguration = new BasicAuthentication
	{
		Username = "<USERNAME>",
		Password = "<PASSWORD>"
	}
};

await graphClient.Identity.ApiConnectors
	.Request()
	.AddAsync(identityApiConnector);

```