---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TimeCardCollectionPage timeCards = graphClient.teams("fd15cad8-80f6-484f-9666-3caf695fbf32").schedule().timeCards()
	.buildRequest()
	.filter("state eq 'clockedOut'")
	.top(2)
	.get();

```