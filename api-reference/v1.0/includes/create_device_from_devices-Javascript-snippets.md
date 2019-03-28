
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
  accountEnabled:false,
  alternativeSecurityIds:
  [
    {
      type:2,
      key:"base64Y3YxN2E1MWFlYw=="
    }
  ],
  deviceId:"4c299165-6e8f-4b45-a5ba-c5d250a707ff",
  displayName:"Test device",
  operatingSystem:"linux",
  operatingSystemVersion:"1"
}
;

client.api('/devices').post({device : devices});

```