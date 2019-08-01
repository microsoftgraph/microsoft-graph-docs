---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

MailFolder mailFolder = new MailFolder();
mailFolder.additionalDataManager().put("@odata.type", new JsonPrimitive("microsoft.graph.mailSearchFolder"));
mailFolder.displayName = "Weekly digests";
mailFolder.includeNestedFolders = true;
LinkedList<String> sourceFolderIdsList = new LinkedList<String>();
sourceFolderIdsList.add("AQMkADYAAAIBDAAAAA==");
mailFolder.sourceFolderIds = sourceFolderIdsList;
mailFolder.filterQuery = "contains(subject, 'weekly digest')";

graphClient.me().mailFolders("AQMkADYAAAIBDAAAAA==").childFolders()
	.buildRequest()
	.post(mailFolder);

```