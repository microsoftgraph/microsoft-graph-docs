---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthorizationPolicy authorizationPolicy = new AuthorizationPolicy();
LinkedList<String> enabledPreviewFeaturesList = new LinkedList<String>();
enabledPreviewFeaturesList.add("assignGroupsToRoles");
authorizationPolicy.enabledPreviewFeatures = enabledPreviewFeaturesList;

graphClient.policies().authorizationPolicy("authorizationPolicy")
	.buildRequest()
	.patch(authorizationPolicy);

```