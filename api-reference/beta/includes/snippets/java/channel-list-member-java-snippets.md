---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IConversationMemberCollectionPage members = graphClient.teams("2ab9c796-2902-45f8-b712-7c5a63cf41c4").channels("19:20bc1df46b1148e9b22539b83bc66809@thread.skype").members()
	.buildRequest()
	.get();

```