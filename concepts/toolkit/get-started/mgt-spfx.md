---
title: "SharePoint Framework library for Microsoft Graph Toolkit"
description: "Use the SharePoint Framework library for Microsoft Graph Toolkit to use Microsoft Graph Toolkit in SharePoint Framework solutions."
localization_priority: Normal
author: waldekmastykarz
---

# SharePoint Framework library for Microsoft Graph Toolkit

Use the SharePoint Framework library for Microsoft Graph Toolkit to use Microsoft Graph Toolkit in SharePoint Framework solutions.

To prevent multiple components from registering their own set of Microsoft Graph Toolkit components on the page, you should deploy this library to your tenant and reference Microsoft Graph Toolkit components that you use in your solution from this library.

## Installation

To load Microsoft Graph Toolkit components from the library, add the `@microsoft/mgt-spfx` package as a runtime dependency to your SharePoint Framework project:

```bash
npm install @microsoft/mgt-spfx
```

or

```bash
yarn add @microsoft/mgt-spfx
```

Before deploying your SharePoint Framework package to your tenant, you will need to deploy the `@microsoft/mgt-spfx` SharePoint Framework package to your tenant. You can download the package corresponding to the version of `@microsoft/mgt-spfx` that you used in your project, from the [Releases](https://github.com/microsoftgraph/microsoft-graph-toolkit/releases) section on GitHub.

>[!IMPORTANT]
>Because only one version of the SharePoint Framework library for Microsoft Graph Toolkit can be installed in the tenant, before you use the Microsoft Graph Toolkit in your solution, determine whether your organization or customer already has a version of the SharePoint Framework library deployed and use the same version.

## Usage

When building SharePoint Framework web parts and extensions, reference the Microsoft Graph Toolkit `Provider` and `SharePointProvider` from the `@microsoft/mgt-spfx` package. This will ensure that your solution will use Microsoft Graph Toolkit components that are already registered on the page, rather than instantiating its own. The instantiation process is the same for all web parts no matter which JavaScript framework they use.

```ts
import { Providers, SharePointProvider } from '@microsoft/mgt-spfx';

// [...] trimmed for brevity

export default class MgtWebPart extends BaseClientSideWebPart<IMgtWebPartProps> {
  protected async onInit() {
    if (!Providers.globalProvider) {
      Providers.globalProvider = new SharePointProvider(this.context);
    }
  }

  // [...] trimmed for brevity
}
```

When building web parts using a framework other than React, you can load components directly in your web part:

```ts
export default class MgtNoFrameworkWebPart extends BaseClientSideWebPart<IMgtNoFrameworkWebPartProps> {
  protected async onInit() {
    if (!Providers.globalProvider) {
      Providers.globalProvider = new SharePointProvider(this.context);
    }
  }

  public render(): void {
    this.domElement.innerHTML = `
      <div>
        <mgt-person person-query="me"></mgt-person>
      </div>`;
  }

  // [...] trimmed for brevity
}
```

### React

If you're building a web part using React, you can use the `@microsoft/mgt-react` package. However, make sure to import all React components from the `@microsoft/mgt-react/dist/es6/spfx` path. This will ensure that your solution will only use Microsoft Graph Toolkit components that are already registered on the page, rather than instantiating its own.

```tsx
import { Person } from '@microsoft/mgt-react/dist/es6/spfx';
import { ViewType } from '@microsoft/mgt-spfx';

// [...] trimmed for brevity

export default class MgtReact extends React.Component<IMgtReactProps, {}> {
  public render(): React.ReactElement<IMgtReactProps> {
    return (
      <div className={ styles.mgtReact }>
        <Person personQuery="me" view={ViewType.image}></Person>
      </div>
    );
  }
}
```

>[!IMPORTANT]
> Make sure all Microsoft Graph Toolkit imports in your solution are from either:
> * `@microsoft/mgt-spfx` or
> * `@microsoft/mgt-react/dist/es6/spfx`
> 
> Do not import from any other Microsoft Graph Toolkit packages (`@microsoft/mgt-*`) to avoid packaging your own copy of the toolkit and colliding with the shared library.

## See also

* [Build a SharePoint web part with the Microsoft Graph Toolkit](./build-a-sharepoint-web-part.md)
* [Learn about authentication providers](../providers/providers.md)
