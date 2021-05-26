---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "return=minimal"));

GroupDeltaCollectionPage delta = graphClient.groups()
	.delta()
	.buildRequest( requestOptions )
	.select("displayName,description,mailNickname")
	.get();

```