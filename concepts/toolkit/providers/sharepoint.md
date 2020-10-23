---
title: "SharePoint provider"
description: "Use the SharePoint provider inside your SharePoint web parts to power the components with Microsoft Graph access."
localization_priority: Normal
author: nmetulev
---

# SharePoint provider

Use the SharePoint provider inside your SharePoint web parts to power the components with Microsoft Graph access.

To learn more, see [Providers](../providers.md).

## Get started

Initialize the provider inside the `onInit()` method of your web part.

```ts

// import the providers at the top of the page
import {Providers, SharePointProvider} from '@microsoft/mgt';

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

>**Note:** The Microsoft Graph Toolkit requires Typescript 3.x. Make sure you're using a supported version of Typescript by [installing the right compiler](https://github.com/SharePoint/sp-dev-docs/wiki/SharePoint-Framework-v1.8-release-notes#support-for-typescript-27-29-and-3x).

## Sample

For an example that shows you how to use the various components in your SharePoint web parts, see the [SharePoint webpart sample](https://github.com/microsoftgraph/microsoft-graph-toolkit/tree/master/samples/sp-webpart) in the Microsoft Graph Toolkit repository.

## Test in the workbench

If you're just getting started with SharePoint web parts, you can follow the [Build your first web part](/sharepoint/dev/spfx/web-parts/get-started/build-a-hello-world-web-part) guidance.

After you've created a web part, and you're ready to use the components, you will need to make sure that your web part has the right permissions to access Microsoft Graph. For details, see [Consume Microsoft Graph in the SharePoint Framework](/sharepoint/dev/spfx/use-aad-tutorial).

In short, it's important to add the right permission to your `package-solution.json`. You will need to upload a package of your web part to SharePoint and have an administrator approve the requested permissions.

>**Tip:** if you're not sure what permissions to add, the documentation for each component includes all the permissions it needs.

## Polyfills

If you plan to support IE11 in your SPFx webparts, you must use polyfills.

To learn more, see [Getting started with Microsoft Graph Toolkit](../get-started/overview.md#polyfills).