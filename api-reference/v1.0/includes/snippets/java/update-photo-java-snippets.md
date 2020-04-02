---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ProfilePhoto profilePhoto = new ProfilePhoto();
profilePhoto.height = 99;
profilePhoto.width = 99;
profilePhoto.id = "id-value";

graphClient.users("{id|userPrincipalName}").photo()
	.buildRequest()
	.patch(profilePhoto);

```