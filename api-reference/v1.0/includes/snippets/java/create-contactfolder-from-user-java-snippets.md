---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ContactFolder contactFolder = new ContactFolder();
contactFolder.parentFolderId = "AQMkADIxYjJiYgEzLTFmNjYALTRjYTMtODA1NC0wZDkxZGNmOTcxNTQALgAAA8RJzXYaLKZPlmn0ge0edZkBADa3qi2IMXRNg6RwQSHe_F8AAAIBDgAAAA==";
contactFolder.displayName = "Important contacts";

graphClient.me().contactFolders()
	.buildRequest()
	.post(contactFolder);

```