
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

var masterCategories = client.api('/me/outlook/masterCategories('de912e4d-c790-4da9-949c-ccd933aaa0f7')')
	.version('beta')
	.get();

```