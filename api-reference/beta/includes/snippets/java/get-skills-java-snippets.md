---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SkillProficiencyCollectionPage skills = graphClient.me().profile().skills()
	.buildRequest()
	.get();

```