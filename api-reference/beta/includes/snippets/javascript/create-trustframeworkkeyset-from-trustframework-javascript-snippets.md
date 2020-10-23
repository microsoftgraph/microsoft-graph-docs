---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const trustFrameworkKeySet = {
  id: "keyset1",
  keys: [
    {
      k: "k-value",
      x5c: [
        "x5c-value"
      ],
      x5t: "x5t-value",
      kty: "kty-value",
      use: "use-value",
      exp: 99,
      nbf: 99,
      kid: "kid-value",
      e: "e-value",
      n: "n-value",
      d: "d-value",
      p: "p-value",
      q: "q-value",
      dp: "dp-value",
      dq: "dq-value",
      qi: "qi-value"
    }
  ]
};

let res = await client.api('/trustFramework/keySets')
	.version('beta')
	.post(trustFrameworkKeySet);

```