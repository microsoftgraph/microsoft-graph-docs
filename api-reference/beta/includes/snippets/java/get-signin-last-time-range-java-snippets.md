---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LinkedList<Option> requestOptions = new LinkedList<Option>();
requestOptions.add(new QueryOption("filter", "signInActivity/lastSignInDateTime le 2019-06-01T00:00:00Z"));

IUserCollectionPage users = graphClient.users()
	.buildRequest( requestOptions )
	.filter("signInActivity/lastSignInDateTime le 2019-06-01T00:00:00Z")
	.get();

```