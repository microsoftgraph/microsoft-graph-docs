---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityApiConnectorCollectionPage apiConnectors = graphClient.identity().apiConnectors()
	.buildRequest()
	.get();

```