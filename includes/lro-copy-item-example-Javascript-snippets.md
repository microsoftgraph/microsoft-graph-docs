
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

const copy = {
  parentReference: {
    path: "/drive/root:/Documents"
  },
  name: "Copy of LargeFolder1"
}
;

client.api('/me/drive/items/{folder-item-id}/copy')
	.version('beta').post({String : copy});

```