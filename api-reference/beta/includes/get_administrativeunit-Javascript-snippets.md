
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

var administrativeUnit = client.api('/education/schools/2961761D-8094-4183-A9F6-8E36E966C7D9/administrativeUnit')
	.version('beta')
	.get();

```