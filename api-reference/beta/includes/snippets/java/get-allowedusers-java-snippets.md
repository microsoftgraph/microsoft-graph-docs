---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IUserCollectionWithReferencesPage allowedUsers = graphClient.print().shares("{id}").allowedUsers()
	.buildRequest()
	.get();

```