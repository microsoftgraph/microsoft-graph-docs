---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("Prefer", "outlook.body-content-type=\"text\""));

MessageCollectionPage messages = graphClient.me().messages()
	.buildRequest( requestOptions )
	.select("subject,body,bodyPreview,uniqueBody")
	.get();

```