---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IServicePrincipalDeltaCollectionPage delta = graphClient.servicePrincipals()
	.delta()
	.buildRequest()
	.get();

```