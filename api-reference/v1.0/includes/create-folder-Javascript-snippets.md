
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

const children = {
  name: "New Folder",
  folder: { },
  @microsoft.graph.conflictBehavior: "rename"
}
;

client.api('/me/drive/root/children').post({driveItem : children});

```