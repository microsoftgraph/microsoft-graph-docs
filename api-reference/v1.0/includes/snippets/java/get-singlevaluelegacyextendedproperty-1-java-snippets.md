---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("$filter", "id eq 'String {66f5a359-4659-4830-9070-00047ec6ac6e} Name Color')"));

Message message = graphClient.me().messages("AAMkAGE1M2_bs88AACHsLqWAAA=")
	.buildRequest( requestOptions )
	.expand("singleValueExtendedProperties($filter=id%20eq%20'String%20%7B66f5a359-4659-4830-9070-00047ec6ac6e%7D%20Name%20Color')")
	.get();

```