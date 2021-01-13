---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PermissionGrantConditionSet permissionGrantConditionSet = new PermissionGrantConditionSet();
permissionGrantConditionSet.permissionType = PermissionType.DELEGATED;
permissionGrantConditionSet.resourceApplication = "00000003-0000-0000-c000-000000000000";

graphClient.policies().permissionGrantPolicies("my-custom-consent-policy").excludes()
	.buildRequest()
	.post(permissionGrantConditionSet);

```