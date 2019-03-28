
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

var messages = client.api('/me/messages('AAMkAGE1M2IyNGNmLTI5MTktNDUyZi1iOTVl===')')
	.version('beta')
	.filter('id eq 'Microsoft.OutlookServices.OpenTypeExtension.Com.Contoso.Referral')')
	.expand('extensions')
	.get();

```