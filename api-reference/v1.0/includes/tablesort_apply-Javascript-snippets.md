
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
  fields: [
    {
      key: 99,
      sortOn: "sortOn-value",
      ascending: true,
      color: "color-value",
      dataOption: "dataOption-value",
      icon: {
        set: "set-value",
        index: 99
      }
    }
  ],
  matchCase: true,
  method: "method-value"
}
;

client.api('/me/drive/items/{id}/workbook/tables/{id|name}/sort/apply').post({workbookSortField : apply});

```