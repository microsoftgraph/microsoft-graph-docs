
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

const plans = {
  owner: "ebf3b108-5234-4e22-b93d-656d7dae5874",
  title: "title-value"
}
;

client.api('/planner/plans').post({plannerPlan : plans});

```