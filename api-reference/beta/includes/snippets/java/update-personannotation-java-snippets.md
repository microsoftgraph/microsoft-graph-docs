---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonAnnotation personAnnotation = new PersonAnnotation();
personAnnotation.allowedAudiences = EnumSet.of(AllowedAudiences.ORGANIZATION);

graphClient.users("{userId}").profile().notes("{id}")
	.buildRequest()
	.patch(personAnnotation);

```