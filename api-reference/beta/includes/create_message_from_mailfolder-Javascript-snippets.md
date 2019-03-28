
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

const messages = {
  receivedDateTime: "2016-10-19T10:37:00Z",
  sentDateTime: "2016-10-19T10:37:00Z",
  hasAttachments: true,
  subject: "subject-value",
  body: {
    contentType: "",
    content: "content-value"
  },
  bodyPreview: "bodyPreview-value"
}
;

client.api('/me/mailFolders/{id}/messages')
	.version('beta').post({message : messages});

```