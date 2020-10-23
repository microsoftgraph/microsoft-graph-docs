---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("$orderby", "LastUsed/LastAccessedDateTime desc"));

IUsedInsightCollectionPage used = graphClient.me().insights().used()
	.buildRequest( requestOptions )
	.get();

```