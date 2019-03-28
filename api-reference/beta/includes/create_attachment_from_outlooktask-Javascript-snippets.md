
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

const attachments = {
  lastModifiedDateTime: "datetime-value",
  name: "name-value",
  contentType: "contentType-value",
  size: 99,
  isInline: true
}
;

client.api('/users/{id}/outlook/tasks/{id}/attachments')
	.version('beta').post({attachment : attachments});

```