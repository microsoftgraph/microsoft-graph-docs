---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WorkforceIntegration workforceIntegration = graphClient.teamwork().workforceIntegrations("{workforceintegrationid}")
	.buildRequest()
	.get();

```