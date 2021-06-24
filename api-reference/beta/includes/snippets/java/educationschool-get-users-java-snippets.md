---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationUserCollectionWithReferencesPage users = graphClient.education().schools("10002").users()
	.buildRequest()
	.get();

```