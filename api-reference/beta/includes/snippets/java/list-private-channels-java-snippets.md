---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChannelCollectionPage channels = graphClient.teams("64c323f2-226a-4e64-8ba4-3e6e3f7b9330").channels()
	.buildRequest()
	.filter("membershipType eq 'private'")
	.get();

```