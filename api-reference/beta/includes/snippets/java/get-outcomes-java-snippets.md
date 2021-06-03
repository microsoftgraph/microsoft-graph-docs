---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EducationOutcomeCollectionPage outcomes = graphClient.education().classes("{id}").assignments("{id}").submissions("{id}").outcomes()
	.buildRequest()
	.get();

```