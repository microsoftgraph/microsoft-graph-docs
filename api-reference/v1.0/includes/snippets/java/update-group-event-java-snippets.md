---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Event event = new Event();
Location location = new Location();
location.displayName = "Conf Room 2";
event.location = location;

graphClient.groups("01d4ee64-15ce-491e-bad1-b91aa3223df4").calendar().events("AAMkADZlAAAAABERAAA=")
	.buildRequest()
	.patch(event);

```