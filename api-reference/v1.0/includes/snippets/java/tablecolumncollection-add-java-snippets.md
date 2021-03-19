---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

int index = 3;

LinkedList<JsonElement> valuesList = new LinkedList<JsonElement>();
JsonElement values = new JsonObject();

valuesList.add(values);

graphClient.me().drive().items("{id}").workbook().tables("{id|name}").columns()
	.add(WorkbookTableColumnAddParameterSet
		.newBuilder()
		.withIndex(index)
		.withValues(values)
		.withName(null)
		.build())
	.buildRequest()
	.post();

```