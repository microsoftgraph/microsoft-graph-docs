
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

const updateTiIndicators = {
  value: [
    {
      id: "c6fb948b-89c5-3bba-a2cd-a9d9a1e430e4",
      additionalInformation: "mytest"
    },
    {
      id: "e58c072b-c9bb-a5c4-34ce-eb69af44fb1e",
      additionalInformation: "test again"
    }
  ]
}

;

client.api('/security/tiIndicators/updateTiIndicators')
	.version('beta').post({tiIndicator : updateTiIndicators});

```