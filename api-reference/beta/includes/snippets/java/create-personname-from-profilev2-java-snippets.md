---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonName personName = new PersonName();
personName.displayName = "Innocenty Popov";
personName.first = "Innocenty";
personName.initials = "IP";
personName.last = "Popov";
personName.languageTag = "en-US";
personName.maiden = null;

graphClient.me().profile().names()
	.buildRequest()
	.post(personName);

```