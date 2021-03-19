---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationClassDeltaCollectionPage delta = graphClient.education().classes()
	.delta()
	.buildRequest()
	.get();

```