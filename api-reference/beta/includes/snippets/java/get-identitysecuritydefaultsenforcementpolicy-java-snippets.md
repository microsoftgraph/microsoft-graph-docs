---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IdentitySecurityDefaultsEnforcementPolicy identitySecurityDefaultsEnforcementPolicy = graphClient.policies().identitySecurityDefaultsEnforcementPolicy()
	.buildRequest()
	.get();

```