
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

const checkin = {
  comment: "Updating the latest guidelines"
}
;

client.api('/drives/{drive-id}/items/{item-id}/checkin')
	.version('beta').post({String : checkin});

```