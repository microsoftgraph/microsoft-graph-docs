---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String displayName = "Library Assist";

String description = "Self help community for library";

String mailNickname = "libassist";

ClonableTeamParts partsToClone = ClonableTeamParts.APPS;

TeamVisibilityType visibility = TeamVisibilityType.PUBLIC;

graphClient.teams("{id}")
	.clone(displayName,description,mailNickname,null,visibility,partsToClone)
	.buildRequest()
	.post();

```