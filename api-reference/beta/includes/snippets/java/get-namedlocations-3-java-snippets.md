---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

NamedLocationCollectionPage namedLocations = graphClient.identity().conditionalAccess().namedLocations()
	.buildRequest()
	.filter("createdDateTime ge 2019-09-01T00:00:00Z")
	.get();

```