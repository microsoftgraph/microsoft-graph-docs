---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationAssignment educationAssignment = graphClient.education().classes("5edb6a5f-fc6b-441b-8952-bcbfc33ef0e5").assignments("1fdf61ee-c129-4960-9b7c-8df159aa64b0")
	.buildRequest()
	.get();

```