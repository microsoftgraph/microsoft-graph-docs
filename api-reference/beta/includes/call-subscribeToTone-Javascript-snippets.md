
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

const subscribeToTone = {
  clientContext: "d45324c1-fcb5-430a-902c-f20af696537c"
}
;

client.api('/app/calls/{id}/subscribeToTone')
	.version('beta').post({String : subscribeToTone});

```