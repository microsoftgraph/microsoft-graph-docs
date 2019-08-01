---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Int32 index = new Int32();

LinkedList<Json> valuesList = new LinkedList<Json>();
Json values = new Json();

valuesList.add(values);

graphClient.me().drive().items("{id}").workbook().tables("{id|name}").columns()
	.add(index,values,name)
	.buildRequest()
	.post();

```