---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.directory().featureRolloutPolicies("df85e4d9-e8c4-4033-a41c-73419a95c29c").appliesTo("2441b489-4f12-4882-b039-8f6006bd66da").reference()
	.buildRequest()
	.delete();

```