---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const plannerUser = {
  favoritePlanReferences: {
    jd8S5gOaFk2S8aWCIAJz42QAAxtD: {
      '@odata.type': '#microsoft.graph.plannerFavoritePlanReference',
      orderHint: ' !',
      planTitle: 'Next Release Discussion'
    },
    '7oTB5aMIAE2rVo-1N-L7RmQAGX2q': null
  },
  recentPlanReferences: {
    jd8S5gOaFk2S8aWCIAJz42QAAxtD: {
      '@odata.type': '#microsoft.graph.plannerRecentPlanReference',
      lastAccessedDateTime: '2018-01-02T22:49:46.155Z',
      planTitle: 'Next Release Discussion'
    }
  }
};

await client.api('/me/planner')
	.version('beta')
	.update(plannerUser);

```