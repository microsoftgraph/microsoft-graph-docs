---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationCategory educationCategory = new EducationCategory();
educationCategory.displayName = "Quizzes";

graphClient.education().classes("9a5e4047-c1dc-4243-9628-580d3c64b80c").assignmentCategories()
	.buildRequest()
	.post(educationCategory);

```