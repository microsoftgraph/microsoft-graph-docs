---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

B2cIdentityUserFlow b2cIdentityUserFlow = new B2cIdentityUserFlow();
b2cIdentityUserFlow.id = "UserFlowWithAPIConnector";
b2cIdentityUserFlow.userFlowType = UserFlowType.SIGN_UP_OR_SIGN_IN;
b2cIdentityUserFlow.userFlowTypeVersion = 1;
UserFlowApiConnectorConfiguration apiConnectorConfiguration = new UserFlowApiConnectorConfiguration();
IdentityApiConnector postFederationSignup = new IdentityApiConnector();
postFederationSignup.additionalDataManager().put("@odata.id", new JsonPrimitive("{apiConnectorId}"));
apiConnectorConfiguration.postFederationSignup = postFederationSignup;
IdentityApiConnector postAttributeCollection = new IdentityApiConnector();
postAttributeCollection.additionalDataManager().put("@odata.id", new JsonPrimitive("{apiConnectorId}"));
apiConnectorConfiguration.postAttributeCollection = postAttributeCollection;
b2cIdentityUserFlow.apiConnectorConfiguration = apiConnectorConfiguration;

graphClient.identity().b2cUserFlows()
	.buildRequest()
	.post(b2cIdentityUserFlow);

```