
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

const apply = {
  criteria: {
    criterion1: "criterion1-value",
    criterion2: "criterion2-value",
    color: "color-value",
    operator: {
    },
    icon: {
      set: "set-value",
      index: 99
    },
    dynamicCriteria: "dynamicCriteria-value",
    values: {
    },
    filterOn: "filterOn-value"
  }
}
;

client.api('/me/drive/items/{id}/workbook/tables/{id|name}/columns/{id|name}/filter/apply')
	.version('beta').post({workbookFilterCriteria : apply});

```