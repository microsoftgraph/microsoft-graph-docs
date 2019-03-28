
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

const items = {
  fields: {
    Title: "Widget",
    Color: "Purple",
    Weight: 32
  }
}
;

client.api('/sites/{site-id}/lists/{list-id}/items')
	.version('beta').post({listItem : items});

```