---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationCategoryCollectionPage assignmentCategories = graphClient.education().classes("4797d052-ebf5-4018-a088-e11adc6b2cbb").assignmentCategories()
	.buildRequest()
	.get();

```