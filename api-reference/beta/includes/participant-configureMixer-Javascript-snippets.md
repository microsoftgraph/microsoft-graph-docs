
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

const configureMixer = {
  clientContext: "d45324c1-fcb5-430a-902c-f20af696537c",
  participantMixerLevels: [
    {
      participant: "550fae72-d251-43ec-868c-373732c2704f",
      exclusive: true,
      ducking: {
        rampActive: 50,
        rampInactive: 50,
        lowerLevel: 10,
        upperLevel: 50
      },
      sourceLevels: [
        {
          participant: "632899f8-2ea1-4604-8413-27bd2892079f",
          level: 50,
          duckOthers: false
        }
      ]
    }
  ]
}
;

client.api('/app/calls/{id}/participants/configureMixer')
	.version('beta').post({ParticipantMixerLevel : configureMixer});

```