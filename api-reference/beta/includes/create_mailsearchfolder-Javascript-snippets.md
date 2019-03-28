
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

const childFolders = {
  @odata.type: "microsoft.graph.mailSearchFolder",
  displayName: "Get MyAnalytics",
  includeNestedFolders: true,
  sourceFolderIDs: ["AAMkAGVmMDEzM"],
  filterQuery: "contains(subject, 'MyAnalytics')"
}
;

client.api('/me/mailFolders/searchfolders/childfolders')
	.version('beta').post({mailFolder : childFolders});

```