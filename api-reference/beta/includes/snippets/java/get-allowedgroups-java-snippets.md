---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IGroupCollectionWithReferencesPage allowedGroups = graphClient.print().shares("{id}").allowedGroups()
	.buildRequest()
	.get();

```