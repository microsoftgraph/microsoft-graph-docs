---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PasswordCredential passwordCredential = new PasswordCredential();
passwordCredential.displayName = "Password friendly name";

graphClient.applications("{id}")
	.addPassword(passwordCredential)
	.buildRequest()
	.post();

```