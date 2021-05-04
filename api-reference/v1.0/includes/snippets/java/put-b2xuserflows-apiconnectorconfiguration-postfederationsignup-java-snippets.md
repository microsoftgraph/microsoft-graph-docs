---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityApiConnector identityApiConnector = new IdentityApiConnector();
identityApiConnector.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/v1.0/identity/apiConnectors/{id}"));

graphClient.identity().b2xUserFlows("B2X_1_testuserflow").postFederationSignup().reference()
	.buildRequest()
	.put(identityApiConnector);

```