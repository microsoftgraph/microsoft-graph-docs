---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("$filter", "riskLevel eq microsoft.graph.riskLevel'medium'"));

IRiskyUserCollectionPage riskyUsers = graphClient.riskyUsers()
	.buildRequest( requestOptions )
	.get();

```