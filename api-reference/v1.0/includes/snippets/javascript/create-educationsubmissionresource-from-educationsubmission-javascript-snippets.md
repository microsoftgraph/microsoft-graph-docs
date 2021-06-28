---
description: "Automatically generated file. DO NOT MODIFY"
---

```javascript

const options = {
	authProvider,
};

const client = Client.init(options);

const educationSubmissionResource = {
  assignmentResourceUrl: 'https://graph.microsoft.com/v1.0/drives/b!8-QjN2tsv0WyGnTv7vOvnQkmGHbbeMNLqYKONmHLVnvCVmBYIGpeT456457AdW9f/items/017NJZI25NOB5XZNLABF7646XAMDZTQQ6T',
  resource: {
      '@odata.type': '#microsoft.graph.educationWordResource',
      displayName: 'Report.docx',
      createdDateTime: '2017-10-21T07:52:53.9863696Z',
      createdBy: {
          application: null,
          device: null,
          user: {
              id: '63cc91d2-59c7-4732-9594-35b91a26b340',
              displayName: null
          }
      },
      lastModifiedDateTime: '2017-10-21T07:52:53.9863696Z',
      lastModifiedBy: {
          application: null,
          device: null,
          user: {
              id: '63cc91d2-59c7-4732-9594-35b91a26b340',
              displayName: null
          }
      },
      fileUrl: 'https://graph.microsoft.com/v1.0/drives/b!8-QjN2tsv0WyGnTv7vOvnQkmGHbbeMNLqYKONmHLVnvCVmBYIGpeTZ_iul5AdW9f/items/017NJZI27BCN2QI2H7HJGLIVPXR6SD2DH6'
  },
  '@odata.type': 'microsoft.graph.educationResource'
};

await client.api('/education/classes/acdefc6b-2dc6-4e71-b1e9-6d9810ab1793/assignments/ad8afb28-c138-4ad7-b7f5-a6986c2655a8/submissions/fbe51c90-78b7-418a-b5f3-871bf8d8d21e/resources')
	.post(educationSubmissionResource);

```