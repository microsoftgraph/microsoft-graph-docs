# Azure AD Synchronization API Overview

Azure Active Directory (Azure AD) identity synchronization (also called "provisioning") allows you to automate the creation, maintenance, and removal of identities in cloud (SaaS) applications such as Dropbox, Salesforce, ServiceNow, and more. For introductory information on synchronization in Azure AD, see following articles:

* [Automate user provisioning and deprovisioning to SaaS applications with Azure Active Directory](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-saas-app-provisioning)
*  [Managing user account provisioning for enterprise apps in the Azure portal](https://docs.microsoft.com/en-us/azure/active-directory/active-directory-enterprise-apps-manage-provisioning)

## What is the purpose of the Azure AD Synchronization API? 

Synchronization API, part of Microsfot Graph API, allows programmatic management of identity synchronization. Using the API one can create, start and stop synchronization jobs, make changes to their synchronization schema, and verify current synchronization status. 

## Object model overview

### Synchronization Job

Synchronization job performs synchronization by periodically running in the background, polling for changes in one directory and pushing them to another directory. Synchronization job is always specific to a particular instance of an application in your tenant. As part of the synchronization job setup, generally you would need to give authorization to read/write objects in your target directory, and customize job's synchronization schema to suit your needs. For more information, please see [synchronization job](synchronization_job.md).

### Synchronization Schema

Synchronization schema contains the bulk of a particular synchronization setup. On a high level, it defines what objects will be synchronized and how. Most often you will want to customize some of the attribute mappings to suit your needs, or add a scoping filter to synchronize only objects which satisfy a certain condition. For more information, please see [synchronization schema](synchronization_schema.md).

#### Directory Definition

Directory definition provides synchronization engine information about a directory and its objects. Directory definition tells synchronization engine, for example, that directory has objects named "User" and "Group" and what attributes are supported for those objects. In order for the object and attribute to used in [object mappings](synchronization_objectMapping.md), they must to be defined as part of the directory definition. For more information, please see [directory definition](synchronization_directoryDefinition.md).

#### Synchronization Rule

Synchronization rules are at the core of the synchronization setup. They instruct synchronization on how the synchronization should be performed. That includes what objects should be synchronized, how objects from source directory should be matched with objects in target directory, and how attributes should be transformed going from source to target directory. For more information, please see [synchronization rule](synchronization_rule.md).

#### Object Mapping

Object mappings are the main part of the synchronization rule. Single object mapping defines how a given object should be synchronized from source directory to target. In particular, it defines how object in source directory should be matched with an object in target directory, what (if any) scoping filters should be used to decide if we want to provision a given object, and how object attributes should be transformed going from source to target directory. For more information, please see [object mapping](synchronization_objectMapping.md).

### Synchronization Template

Synchronization template provides pre-configured synchronization settings for a particular application. These settings will be used by default for any [synchronization job](synchronization_job.md) based on the template.  Template is controlled by the developer of the application, although anyone can retrieve the template to see the default settings, most importantly [synchronization schema](synchronization_schema.md). For more information, please see [synchronization template](synchronization_template.md).

## Next steps

* [Synchronization API Quick Start](../resources/synchronization_howto_api_quickstart.md)
* [Configure synchronization with directory extension attributes](../resources/synchronization_howto_directory_extensions.md)
* [Configure synchronization with custom target attributes](../resources/synchronization_howto_custom_attributes.md)
