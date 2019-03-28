
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

const tasks = {
  assignedTo: "Dana Swope",
  subject: "Shop for children's weekend",
  startDateTime: {
      dateTime: "2016-05-03T09:00:00",
      timeZone: "Eastern Standard Time"
  },
  dueDateTime:  {
      dateTime: "2016-05-05T16:00:00",
      timeZone: "Eastern Standard Time"
  }
}
;

client.api('/me/outlook/tasks')
	.version('beta').post({outlookTask : tasks});

```