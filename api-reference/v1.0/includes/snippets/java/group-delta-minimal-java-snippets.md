---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "return=minimal"));

IGroupDeltaCollectionPage delta = graphClient.groups()
	.delta()
	.buildRequest( requestOptions )
	.select("displayName,description,mailNickname")
	.get();

```