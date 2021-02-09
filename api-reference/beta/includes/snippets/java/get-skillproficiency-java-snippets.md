---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

SkillProficiency skillProficiency = graphClient.me().profile().skills("{id}")
	.buildRequest()
	.get();

```