---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PermissionGrantPolicy permissionGrantPolicy = new PermissionGrantPolicy();
permissionGrantPolicy.displayName = "Custom permission grant policy";

graphClient.policies().permissionGrantPolicies("my-custom-consent-policy")
	.buildRequest()
	.patch(permissionGrantPolicy);

```