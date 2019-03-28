
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
  topic: "topic-value",
  posts: [{
      body: {
        contentType: "html",
        content: "this is body content"
      }
  }]
}
;

client.api('/groups/{id}/conversations/{id}/threads').post({conversationThread : threads});

```