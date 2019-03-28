
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

const restart = {
   criteria: {
       resetScope: "ConnectorDataStore, Escrows, QuarantineState"
   }
}
;

client.api('/servicePrincipals/{id}/synchronization/jobs/{jobId}/restart')
	.version('beta').post({synchronizationJobRestartCriteria : restart});

```