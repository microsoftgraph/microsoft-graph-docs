---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentityUserFlow identityUserFlow = new IdentityUserFlow();
identityUserFlow.userFlowType = UserFlowType.SIGN_UP_OR_SIGN_IN;
identityUserFlow.userFlowTypeVersion = 1;

graphClient.identity().userFlows()
	.buildRequest()
	.post(identityUserFlow);

```