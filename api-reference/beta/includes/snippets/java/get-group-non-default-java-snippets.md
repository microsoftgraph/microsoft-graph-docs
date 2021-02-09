---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Group group = graphClient.groups("b320ee12-b1cd-4cca-b648-a437be61c5cd")
	.buildRequest()
	.select("allowExternalSenders,autoSubscribeNewMembers,isSubscribedByMail,unseenCount")
	.get();

```