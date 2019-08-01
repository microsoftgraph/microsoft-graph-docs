---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String String = graphClient.education().synchronizationProfiles("{id}")
	.uploadUrl()
	.buildRequest()
	.get();

```