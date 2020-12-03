---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.subscriptions("7f105c7d-2dc5-4530-97cd-4e7ae6534c07")
	.buildRequest()
	.delete();

```