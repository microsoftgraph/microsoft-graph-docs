---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPermissionGrantPolicyCollectionPage permissionGrantPolicies = graphClient.policies().permissionGrantPolicies()
	.buildRequest()
	.get();

```