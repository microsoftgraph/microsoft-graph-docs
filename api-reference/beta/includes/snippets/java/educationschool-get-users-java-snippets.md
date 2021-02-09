---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IEducationUserCollectionWithReferencesPage users = graphClient.education().schools("10002").users()
	.buildRequest()
	.get();

```