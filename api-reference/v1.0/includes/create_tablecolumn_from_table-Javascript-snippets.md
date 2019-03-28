
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

const columns = {
  id: 99,
  name: "name-value",
  index: 99,
  values: "values-value"
}
;

client.api('/me/drive/items/{id}/workbook/tables/{id|name}/columns').post({workbookTableColumn : columns});

```