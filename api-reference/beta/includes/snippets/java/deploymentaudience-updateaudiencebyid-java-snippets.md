---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

String memberEntityType = "String";

LinkedList<String> addMembersList = new LinkedList<String>();
addMembersList.add("String");

LinkedList<String> removeMembersList = new LinkedList<String>();
removeMembersList.add("String");

LinkedList<String> addExclusionsList = new LinkedList<String>();
addExclusionsList.add("String");

LinkedList<String> removeExclusionsList = new LinkedList<String>();
removeExclusionsList.add("String");

graphClient.admin().windows().updates().deployments("{deploymentId}").audience()
	.updateAudienceById(DeploymentAudienceUpdateAudienceByIdParameterSet
		.newBuilder()
		.withMemberEntityType(memberEntityType)
		.withAddMembers(addMembersList)
		.withRemoveMembers(removeMembersList)
		.withAddExclusions(addExclusionsList)
		.withRemoveExclusions(removeExclusionsList)
		.build())
	.buildRequest()
	.post();

```