---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PermissionGrantPolicy permissionGrantPolicy = new PermissionGrantPolicy();
permissionGrantPolicy.id = "my-custom-consent-policy";
permissionGrantPolicy.displayName = "Custom application consent policy";
permissionGrantPolicy.description = "A custom permission grant policy to customize conditions for granting consent.";

graphClient.policies().permissionGrantPolicies()
	.buildRequest()
	.post(permissionGrantPolicy);

```