
```Javascript

// Some callback function
const authProvider: AuthProvider = (callback: AuthProviderCallback) => { 
	// Your logic for getting and refreshing accessToken 
	// Error should be passed in case of error while authenticating 
	// accessToken should be passed upon successful authentication 
	callback(error, accessToken);
};

let options: Options = {
		authProvider,
};

const client = Client.init(options);

const contacts = {
  parentFolderId: "parentFolderId-value",
  birthday: "2016-10-19T10:37:00Z",
  fileAs: "fileAs-value",
  displayName: "displayName-value",
  givenName: "givenName-value",
  initials: "initials-value"
}
;

client.api('/me/contactFolders/{id}/contacts')
	.version('beta').post({contact : contacts});

```