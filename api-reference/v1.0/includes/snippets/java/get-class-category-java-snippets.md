---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationCategory educationCategory = graphClient.education().classes("acdefc6b-2dc6-4e71-b1e9-6d9810ab1793").assignmentCategories("96821157-5efb-4706-8ca2-a90b26c44852")
	.buildRequest()
	.get();

```