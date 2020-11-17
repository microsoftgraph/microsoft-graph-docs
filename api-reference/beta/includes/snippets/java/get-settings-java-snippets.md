---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Settings settings = graphClient.customRequest("/me/analytics/settings", Settings.class)
	.buildRequest()
	.get();

```