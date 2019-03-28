
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

const redirect = {
  targets: [
    {
      endpointType: "default",
      identity: {
        user: {
          id: "550fae72-d251-43ec-868c-373732c2704f",
          tenantId: "72f988bf-86f1-41af-91ab-2d7cd011db47",
          displayName: "Heidi Steen"
        }
      },
      languageId: "en-US",
      region: "westus"
    }
  ],
  targetDisposition: "default",
  timeout: 99,
  maskCallee: false,
  maskCaller: false
}
;

client.api('/app/calls/{id}/redirect')
	.version('beta').post({InvitationParticipantInfo : redirect});

```