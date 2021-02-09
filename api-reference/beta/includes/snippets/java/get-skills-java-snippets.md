---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ISkillProficiencyCollectionPage skills = graphClient.me().profile().skills()
	.buildRequest()
	.get();

```