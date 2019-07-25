---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationAssignmentResource educationAssignmentResource = graphClient.education().classes("11021").assignments("19002").resources("22002")
	.buildRequest()
	.get();

```