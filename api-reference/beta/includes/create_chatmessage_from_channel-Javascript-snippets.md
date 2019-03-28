
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
  body: {
    contentType: "html",
    content: "Hello World <at id=\"0\">Jane Smith</at>"
  },
  mentions: [
    {
      id: 0,
      mentionText: "Jane Smith",
      mentioned: {
        user: {
          displayName: "Jane Smith",
          id: "ef1c916a-3135-4417-ba27-8eb7bd084193",
          userIdentityType: "aadUser"
        }
      }
    }
  ]
}
;

client.api('/teams/{id}/channels/{id}/messages')
	.version('beta').post({chatMessage : messages});

```