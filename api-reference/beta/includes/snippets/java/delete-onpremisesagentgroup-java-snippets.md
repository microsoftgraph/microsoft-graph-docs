---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.onPremisesPublishingProfiles("provisioning").agentGroups("8832388F-3814-4952-B288-FFB62081FE25")
	.buildRequest()
	.delete();

```