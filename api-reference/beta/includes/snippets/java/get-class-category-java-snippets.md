---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationCategory educationCategory = graphClient.education().classes("dacbf757-888d-42ae-b701-5e57cec300ae").assignmentCategories("7f64924d-4cdb-4e54-8c37-c0f3d46f0747")
	.buildRequest()
	.get();

```