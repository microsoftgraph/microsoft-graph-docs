---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IEducationClassCollectionWithReferencesPage classes = graphClient.education().me().classes()
	.buildRequest()
	.get();

```