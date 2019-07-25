---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ApplicationTemplate applicationTemplate = graphClient.applicationTemplates("{id}")
	.buildRequest()
	.get();

```