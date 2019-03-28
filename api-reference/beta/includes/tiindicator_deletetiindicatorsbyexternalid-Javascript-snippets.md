
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

const deleteTiIndicatorsByExternalId = {
  value: [
    "externalId-value1",
    "externalId-value2"
  ]
}
;

client.api('/security/tiIndicators/deleteTiIndicatorsByExternalId')
	.version('beta').post({String : deleteTiIndicatorsByExternalId});

```