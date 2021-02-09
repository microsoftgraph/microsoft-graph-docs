---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthenticationFlowsPolicy authenticationFlowsPolicy = new AuthenticationFlowsPolicy();
SelfServiceSignUpAuthenticationFlowConfiguration selfServiceSignUp = new SelfServiceSignUpAuthenticationFlowConfiguration();
selfServiceSignUp.isEnabled = true;
authenticationFlowsPolicy.selfServiceSignUp = selfServiceSignUp;

graphClient.policies().authenticationFlowsPolicy()
	.buildRequest()
	.patch(authenticationFlowsPolicy);

```