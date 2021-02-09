---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Group group = new Group();
group.description = "Group assignable to a role";
group.displayName = "Role assignable group";
LinkedList<String> groupTypesList = new LinkedList<String>();
groupTypesList.add("Unified");
group.groupTypes = groupTypesList;
group.isAssignableToRole = true;
group.mailEnabled = true;
group.securityEnabled = true;
group.mailNickname = "contosohelpdeskadministrators";
group.visibility = "Private";

graphClient.groups()
	.buildRequest()
	.post(group);

```