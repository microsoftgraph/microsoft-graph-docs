---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "outlook.body-content-type=\"text\""));

Message message = graphClient.me().messages("AAMkAGI1AAAoZCfHAAA=")
	.buildRequest( requestOptions )
	.select("subject,body,bodyPreview,uniqueBody")
	.get();

```