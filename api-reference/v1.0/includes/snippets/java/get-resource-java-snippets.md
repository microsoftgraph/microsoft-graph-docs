---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Stream stream = graphClient.customRequest("/me/onenote/resources/{id}/content", Stream.class)
	.buildRequest()
	.get();

```