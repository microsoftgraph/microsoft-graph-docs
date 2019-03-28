
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
  birthday: "datetime-value",
  fileAs: "fileAs-value",
  displayName: "displayName-value",
  givenName: "givenName-value",
  initials: "initials-value"
}
;

client.api('/me/contactFolders/{id}/contacts').post({contact : contacts});

```