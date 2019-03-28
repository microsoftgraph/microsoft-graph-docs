
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

const programControls = {
    controlId: "7e59d237-2fb0-4e5d-b7bb-d4f9f9129213",
    controlTypeId: "6e4f3d20-c5c3-407f-9695-8460952bcc68",
    programId: "7e59d237-2fb0-4e5d-b7bb-d4f9f9129213"
}
;

client.api('/programControls')
	.version('beta').post({programControl : programControls});

```