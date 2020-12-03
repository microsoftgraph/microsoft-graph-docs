---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String id = "5793aa3b-cca9-4794-679a240f8b58";

LinkedList<Credential> credentialsList = new LinkedList<Credential>();
Credential credentials = new Credential();
credentials.fieldId = "param_username";
credentials.value = "myusername";
credentials.type = "username";

credentialsList.add(credentials);
Credential credentials1 = new Credential();
credentials1.fieldId = "param_password";
credentials1.value = "pa$$w0rd";
credentials1.type = "password";

credentialsList.add(credentials1);

graphClient.servicePrincipals("{id}")
	.updatePasswordSingleSignOnCredentials(id,credentialsList)
	.buildRequest()
	.post();

```