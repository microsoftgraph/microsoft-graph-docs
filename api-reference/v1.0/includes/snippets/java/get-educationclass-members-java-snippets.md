---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IEducationUserCollectionWithReferencesPage members = graphClient.education().classes("{class-id}").members()
	.buildRequest()
	.get();

```