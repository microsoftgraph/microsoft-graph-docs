
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

const charts = {
  id: "id-value",
  height: 99,
  left: 99
}
;

client.api('/me/drive/items/{id}/workbook/worksheets/{id|name}/charts')
	.version('beta').post({workbookChart : charts});

```