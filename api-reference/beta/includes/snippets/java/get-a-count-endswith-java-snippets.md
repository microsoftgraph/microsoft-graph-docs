---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new HeaderOption("ConsistencyLevel", "eventual"));

IUserCollectionPage users = graphClient.users()
	.buildRequest( requestOptions )
	.filter("endswith(mail,'a@contoso.com')")
	.orderBy("userPrincipalName")
	.get();

```