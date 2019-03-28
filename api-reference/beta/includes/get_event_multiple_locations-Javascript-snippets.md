
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

var events = client.api('/me/events('AAMkADAGAADDdm4NAAA=')')
	.version('beta')
	.select('subject,body,bodyPreview,organizer,attendees,start,end,location,locations')
	.get();

```