
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

const add = {
  type: "ColumnStacked",
  sourceData: "A1:B1",
  seriesBy: "Auto"
}
;

client.api('/me/drive/items/{id}/workbook/worksheets/{id|name}/charts/add').post({String : add});

```