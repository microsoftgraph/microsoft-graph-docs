---
title: "SharePoint provider"
description: "Use the SharePoint provider inside your SharePoint web parts to power the components with Microsoft Graph access."
localization_priority: Normal
author: nmetulev
---

# SharePoint provider

Use the SharePoint provider inside your SharePoint web parts to power the components with Microsoft Graph access.

To learn more about authentication providers, see [Providers](./providers.md).

## Get started

Initialize the provider inside the `onInit()` method of your web part. This example uses the [`@microsoft/mgt-spfx` package](../get-started/mgt-spfx.md).

```ts
// import the providers at the top of the page
import {Providers, SharePointProvider} from '@microsoft/mgt-spfx';

// add the onInit() method if not already there in your web part class
protected async onInit() {
  Providers.globalProvider = new SharePointProvider(this.context);
}
```

Now you can add any component in your `render()` method and it will use the SharePoint context to access Microsoft Graph.

```ts
public render(): void {
  this.domElement.innerHTML = `
    <mgt-agenda></mgt-agenda>
    `;
}
```

>**Note:** The Microsoft Graph Toolkit requires Typescript 3.7 or newer. Make sure you're using a supported version of Typescript by [installing the right compiler](https://github.com/SharePoint/sp-dev-docs/wiki/SharePoint-Framework-v1.8-release-notes#support-for-typescript-27-29-and-3x).

## Sample

For details about how to initialize the SharePoint provider, see the [Build a SharePoint web part](../get-started/build-a-sharepoint-web-part.md) getting started guide.

## Test in the workbench

If you're just getting started with SharePoint web parts, you can follow the [Build your first web part](/sharepoint/dev/spfx/web-parts/get-started/build-a-hello-world-web-part) guidance.

After you've created a web part, and you're ready to use the components, you will need to make sure that your web part has the right permissions to access Microsoft Graph. For details, see [Consume Microsoft Graph in the SharePoint Framework](/sharepoint/dev/spfx/use-aad-tutorial).

In short, it's important to add the right permission to your `package-solution.json`. You will need to upload a package of your web part to SharePoint and have an administrator approve the requested permissions.

>[!TIP]
>The [Build a SharePoint web part](../get-started/build-a-sharepoint-web-part.md#configure-permissions) getting started guide provides step-by-step instructions for configuring and approving permissions.

>**Note:** if you're not sure what permissions to add, the documentation for each component includes all the permissions it needs.