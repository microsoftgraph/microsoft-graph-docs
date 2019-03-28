
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

const mute = {
  clientContext: "clientContext-value"
}
;

client.api('/app/calls/{id}/participants/{id}/mute')
	.version('beta').post({String : mute});

```