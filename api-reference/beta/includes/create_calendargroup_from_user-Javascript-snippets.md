
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

const calendarGroups = {
  name: "name-value",
  classId: "classId-value",
  changeKey: "changeKey-value"
}
;

client.api('/me/calendarGroups')
	.version('beta').post({calendarGroup : calendarGroups});

```