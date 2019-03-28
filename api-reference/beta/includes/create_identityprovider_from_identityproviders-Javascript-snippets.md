
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

const identityProviders = {
    name: "Login with Amazon",
    type: "Amazon",
    clientId: "56433757-cadd-4135-8431-2c9e3fd68ae8",
    clientSecret: "000000000000"
}
;

client.api('/identityProviders')
	.version('beta').post({identityProvider : identityProviders});

```