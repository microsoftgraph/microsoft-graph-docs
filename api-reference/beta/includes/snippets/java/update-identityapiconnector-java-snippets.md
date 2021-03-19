---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityApiConnector identityApiConnector = new IdentityApiConnector();
identityApiConnector.displayName = "New Test API";
identityApiConnector.targetUrl = "https://otherapi.com/api/endpoint";
BasicAuthentication authenticationConfiguration = new BasicAuthentication();
authenticationConfiguration.username = "<NEW_USERNAME>";
authenticationConfiguration.password = "<NEW_PASSWORD>";
identityApiConnector.authenticationConfiguration = authenticationConfiguration;

graphClient.identity().apiConnectors("{identityApiConnectorId}")
	.buildRequest()
	.patch(identityApiConnector);

```