---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("ocp-client-name", "\"My Friendly Client\""));
requestOptions.add(new HeaderOption("ocp-client-version", "\"1.2\""));

IBitlockerRecoveryKeyCollectionPage recoveryKeys = graphClient.bitlocker().recoveryKeys()
	.buildRequest( requestOptions )
	.filter("deviceId eq '1ab40ab2-32a8-4b00-b6b5-ba724e407de9'")
	.get();

```