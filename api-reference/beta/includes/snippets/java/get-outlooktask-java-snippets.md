---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "outlook.timezone=\"Pacific Standard Time\""));

OutlookTask outlookTask = graphClient.me().outlook().tasks("AAMkADA1MHgwAAA=")
	.buildRequest( requestOptions )
	.get();

```