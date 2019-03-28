
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

var messages = client.api('/me/messages('AAMkAGE1M2_bs88AACHsLqWAAA=')')
	.version('beta')
	.filter('id eq 'String {66f5a359-4659-4830-9070-00047ec6ac6e} Name Color')')
	.expand('singleValueExtendedProperties')
	.get();

```