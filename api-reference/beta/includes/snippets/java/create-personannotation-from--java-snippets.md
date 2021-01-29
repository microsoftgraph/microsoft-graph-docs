---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PersonAnnotation personAnnotation = new PersonAnnotation();
ItemBody detail = new ItemBody();
detail.contentType = BodyType.TEXT;
detail.content = "I am originally from Australia, but grew up in Moscow, Russia.";
personAnnotation.detail = detail;
personAnnotation.displayName = "About Me";

graphClient.me().profile().notes()
	.buildRequest()
	.post(personAnnotation);

```