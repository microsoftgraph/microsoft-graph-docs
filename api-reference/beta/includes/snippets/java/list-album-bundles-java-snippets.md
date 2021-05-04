---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("filter", "bundle/album ne null"));

DriveItemCollectionPage bundles = graphClient.drive().bundles()
	.buildRequest( requestOptions )
	.filter("bundle/album ne null")
	.get();

```