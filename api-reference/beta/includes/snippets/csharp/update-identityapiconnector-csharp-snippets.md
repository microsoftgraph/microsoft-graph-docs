---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var identityApiConnector = new IdentityApiConnector
{
	DisplayName = "New Test API",
	TargetUrl = "https://otherapi.com/api/endpoint",
	AuthenticationConfiguration = new BasicAuthentication
	{
		Username = "<NEW_USERNAME>",
		Password = "<NEW_PASSWORD>"
	}
};

await graphClient.Identity.ApiConnectors["{identityApiConnectorId}"]
	.Request()
	.UpdateAsync(identityApiConnector);

```