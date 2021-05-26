---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<String> valueList = new LinkedList<String>();
valueList.add("externalId-value1");
valueList.add("externalId-value2");

graphClient.security().tiIndicators()
	.deleteTiIndicatorsByExternalId(TiIndicatorDeleteTiIndicatorsByExternalIdParameterSet
		.newBuilder()
		.withValue(valueList)
		.build())
	.buildRequest()
	.post();

```