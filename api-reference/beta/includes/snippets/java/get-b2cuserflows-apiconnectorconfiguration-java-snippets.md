---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

UserFlowApiConnectorConfiguration userFlowApiConnectorConfiguration = graphClient.customRequest("/identity/b2cUserFlows/B2C_1_testuserflow/apiConnectorConfiguration", UserFlowApiConnectorConfiguration.class)
	.buildRequest()
	.get();

```