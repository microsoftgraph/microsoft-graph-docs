---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationAssignmentResource educationAssignmentResource = new EducationAssignmentResource();
educationAssignmentResource.distributeForStudentWork = false;

graphClient.education().classes("11021").assignments("19002").resources("850f51b7-1df9-4ec0-bd62-64a0214b9cbf")
	.buildRequest()
	.patch(educationAssignmentResource);

```