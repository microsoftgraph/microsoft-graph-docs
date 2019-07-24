---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("select", "siteCollection,webUrl"));
requestOptions.add(new QueryOption("filter", "siteCollection/root ne null"));
requestOptions.add(new QueryOption("$filter", "siteCollection/root ne null"));

ISiteCollectionPage sites = graphClient.sites()
	.buildRequest( requestOptions )
	.get();

```