---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationCategoryCollectionPage categories = graphClient.education().classes("a17025d0-62a8-4450-9e6e-db31d8c8feb8").assignments("1fdf61ee-c129-4960-9b7c-8df159aa64b0").categories()
	.buildRequest()
	.get();

```