---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISecurityActionCollectionPage securityActions = graphClient.security().securityActions()
	.buildRequest()
	.get();

```