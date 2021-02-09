---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationFlowsPolicy authenticationFlowsPolicy = graphClient.policies().authenticationFlowsPolicy()
	.buildRequest()
	.get();

```