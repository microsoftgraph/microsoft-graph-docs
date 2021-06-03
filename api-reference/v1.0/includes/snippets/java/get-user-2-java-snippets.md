---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

User user = graphClient.users("{id | userPrincipalName}")
	.buildRequest()
	.select("displayName,givenName,postalCode")
	.get();

```