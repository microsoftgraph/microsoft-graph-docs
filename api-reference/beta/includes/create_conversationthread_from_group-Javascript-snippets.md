
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

const threads = {
  topic: "New Conversation Thread Topic",
  posts: [{
    body: {
      contentType: "html",
      content: "this is body content"
    },
    newParticipants: [{
      emailAddress: {
        name: "Alex Darrow",
        address: "alexd@contoso.com"
      }
    }]
  }]
}
;

client.api('/groups/{id}/threads')
	.version('beta').post({conversationThread : threads});

```