---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonAnniversary personAnniversary = new PersonAnniversary();
personAnniversary.allowedAudiences = EnumSet.of(AllowedAudiences.CONTACTS);

graphClient.me().profile().anniversaries("{id}")
	.buildRequest()
	.patch(personAnniversary);

```