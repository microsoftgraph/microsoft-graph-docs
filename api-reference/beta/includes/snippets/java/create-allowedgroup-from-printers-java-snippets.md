---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PrintIdentity printIdentity = new PrintIdentity();
printIdentity.additionalDataManager().put("@odata.id", new JsonPrimitive("https://graph.microsoft.com/beta/groups/{id}"));

graphClient.print().shares("{id}").allowedGroups().references()
	.buildRequest()
	.post(printIdentity);

```