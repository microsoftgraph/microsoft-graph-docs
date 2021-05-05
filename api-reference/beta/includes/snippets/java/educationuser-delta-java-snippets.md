---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationUserDeltaCollectionPage delta = graphClient.education().users()
	.delta()
	.buildRequest()
	.get();

```