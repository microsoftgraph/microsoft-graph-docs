---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.education().classes("c42f493f-42b4-4e7d-8148-af894cbc518b").assignmentCategories("b93d3b6b-360c-45c0-8764-e8bb622a9504")
	.buildRequest()
	.delete();

```