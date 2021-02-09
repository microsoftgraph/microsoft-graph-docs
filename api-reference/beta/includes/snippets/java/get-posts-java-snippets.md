---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IPostCollectionPage posts = graphClient.groups("0d75b8dc-c42d-44dd-890a-751a99c0589f").threads("AAQkAD8EJUmcWwTJi06Cew==").posts()
	.buildRequest()
	.get();

```