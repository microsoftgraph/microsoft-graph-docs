
```Javascript

const options = {
	authProvider,
};

const client = Client.init(options);

let res = await client.api('/sites/{site-id}/drive')
	.get();

```
