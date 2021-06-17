---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationClassCollectionWithReferencesPage taughtClasses = graphClient.education().users("{educationUserId}").taughtClasses()
	.buildRequest()
	.get();

```