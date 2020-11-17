---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

int index = new int();

LinkedList<JsonElement> valuesList = new LinkedList<JsonElement>();
JsonElement values = new JsonObject();

valuesList.add(values);

graphClient.me().drive().items("{id}").workbook().tables("{id|name}").columns()
	.add(index,values,null)
	.buildRequest()
	.post();

```