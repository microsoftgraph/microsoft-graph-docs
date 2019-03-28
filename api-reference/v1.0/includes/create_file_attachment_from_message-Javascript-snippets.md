
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
  @odata.type: "#microsoft.graph.fileAttachment",
  name: "smile",
  contentBytes: "base64R0lGODdhEAYEAA7"
}
;

client.api('/me/messages/AAMkpsDRVK/attachments').post({attachment : attachments});

```