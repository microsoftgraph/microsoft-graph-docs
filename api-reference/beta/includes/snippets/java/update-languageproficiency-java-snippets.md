---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LanguageProficiency languageProficiency = new LanguageProficiency();
languageProficiency.allowedAudiences = EnumSet.of(AllowedAudiences.ORGANIZATION);

graphClient.me().profile().languages("{id}")
	.buildRequest()
	.patch(languageProficiency);

```