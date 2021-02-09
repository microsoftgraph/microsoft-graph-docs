---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

IGraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Contact contact = new Contact();
contact.parentFolderId = "parentFolderId-value";
contact.birthday = CalendarSerializer.deserialize("datetime-value");
contact.fileAs = "fileAs-value";
contact.displayName = "displayName-value";
contact.givenName = "givenName-value";
contact.initials = "initials-value";

graphClient.me().contactFolders("{id}").contacts()
	.buildRequest()
	.post(contact);

```