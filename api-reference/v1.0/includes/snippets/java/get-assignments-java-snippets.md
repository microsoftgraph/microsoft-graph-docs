---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationAssignmentCollectionPage assignments = graphClient.education().classes("acdefc6b-2dc6-4e71-b1e9-6d9810ab1793").assignments()
	.buildRequest()
	.get();

```