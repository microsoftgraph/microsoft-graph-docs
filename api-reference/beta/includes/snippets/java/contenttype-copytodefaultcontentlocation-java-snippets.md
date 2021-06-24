---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ItemReference sourceFile = new ItemReference();
SharepointIds sharepointIds = new SharepointIds();
sharepointIds.listId = "e2ecf63b-b0fd-48f7-a54a-d8c15479e3b0";
sharepointIds.listItemId = "2";
sourceFile.sharepointIds = sharepointIds;

String destinationFileName = "newname.txt";

graphClient.sites("{id}").contentTypes("{contentTypeId}")
	.copyToDefaultContentLocation(ContentTypeCopyToDefaultContentLocationParameterSet
		.newBuilder()
		.withSourceFile(sourceFile)
		.withDestinationFileName(destinationFileName)
		.build())
	.buildRequest()
	.post();

```