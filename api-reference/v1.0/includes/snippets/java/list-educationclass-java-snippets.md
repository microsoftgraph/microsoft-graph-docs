---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationClassCollectionWithReferencesPage taughtClasses = graphClient.education().classes("{educationClassId}").members("{educationUserId}").taughtClasses()
	.buildRequest()
	.get();

```