---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("filter", "bundle/album ne null"));

IDriveItemCollectionPage bundles = graphClient.drive().bundles()
	.buildRequest( requestOptions )
	.filter("bundle/album ne null")
	.get();

```