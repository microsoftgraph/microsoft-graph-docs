---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("token", "latest"));

IDriveItemDeltaCollectionPage delta = graphClient.me().drive().root()
	.delta()
	.buildRequest( requestOptions )
	.get();

```