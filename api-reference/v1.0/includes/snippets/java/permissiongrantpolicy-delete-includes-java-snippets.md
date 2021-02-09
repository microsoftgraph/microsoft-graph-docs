---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.policies().permissionGrantPolicies("my-custom-consent-policy").includes("198d8d6b-ecf6-47bc-a3dd-eaa2fe0544c5")
	.buildRequest()
	.delete();

```