---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TimeCard timeCard = graphClient.teams("fd15cad8-80f6-484f-9666-3caf695fbf32").schedule().timeCards("TCK_cc09588d-d9d2-4fa0-85dc-2aa5ef983972")
	.buildRequest()
	.get();

```