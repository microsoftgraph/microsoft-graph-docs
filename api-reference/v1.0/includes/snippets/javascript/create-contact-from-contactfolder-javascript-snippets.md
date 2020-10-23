---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const contact = {
  parentFolderId: "parentFolderId-value",
  birthday: "datetime-value",
  fileAs: "fileAs-value",
  displayName: "displayName-value",
  givenName: "givenName-value",
  initials: "initials-value"
};

let res = await client.api('/me/contactFolders/{id}/contacts')
	.post(contact);

```