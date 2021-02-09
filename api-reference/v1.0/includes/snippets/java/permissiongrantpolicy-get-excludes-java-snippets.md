---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPermissionGrantConditionSetCollectionPage excludes = graphClient.policies().permissionGrantPolicies("microsoft-application-admin").excludes()
	.buildRequest()
	.get();

```