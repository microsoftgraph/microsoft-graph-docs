---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IRoomCollectionPage rooms = graphClient.places("bldg2@contoso.com").microsoft.graph.roomlist().rooms()
	.buildRequest()
	.get();

```