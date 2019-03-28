
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

const devices = {
  accountEnabled: true,
  alternativeSecurityIds: [
    {
      type: 99,
      identityProvider: "identityProvider-value",
      key: "key-value"
    }
  ],
  approximateLastSignInDateTime: "2016-10-19T10:37:00Z",
  deviceId: "deviceId-value",
  deviceMetadata: "deviceMetadata-value",
  deviceVersion: 99
}
;

client.api('/devices')
	.version('beta').post({device : devices});

```