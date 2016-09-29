:: Setup
:: -----

setlocal enabledelayedexpansion

IF NOT DEFINED SITE (
  SET SITE=%~dp0%..
)

IF NOT DEFINED DEPLOYMENT_SOURCE (
  SET DEPLOYMENT_SOURCE=%SITE%\repository
)

IF NOT DEFINED DEPLOYMENT_TARGET_DIR (
  SET DEPLOYMENT_TARGET_DIR=%SITE%\wwwroot\GraphDocuments\en-us
)

IF NOT DEFINED DEPLOYMENT_TEMPLATE (
  SET DEPLOYMENT_TEMPLATE=%SITE%\wwwroot\MD\office-content-pr\rest-api\Microsoft.Graph\html-template
)

IF NOT DEFINED APIDOCS_PATH (
  SET APIDOCS_PATH=%SITE%\wwwroot\MD\apidocs
)

%APIDOCS_PATH%\apidocs.exe publish --path %DEPLOYMENT_SOURCE%\api-reference --output %DEPLOYMENT_TARGET_DIR%\api-reference --template %DEPLOYMENT_TEMPLATE% --format mustache --insert-gitInfo true --gitUrl https://github.com/OfficeDev/microsoft-graph-docs/tree/master/api-reference

%APIDOCS_PATH%\apidocs.exe publish --path %DEPLOYMENT_SOURCE%\content\authorization --output %DEPLOYMENT_TARGET_DIR%\authorization --template %DEPLOYMENT_TEMPLATE% --format mustache --insert-gitInfo true --gitUrl https://github.com/OfficeDev/microsoft-graph-docs/tree/master/content/authorization

%APIDOCS_PATH%\apidocs.exe publish --path %DEPLOYMENT_SOURCE%\content\overview --output %DEPLOYMENT_TARGET_DIR%\overview --template %DEPLOYMENT_TEMPLATE% --format mustache --insert-gitInfo true --gitUrl https://github.com/OfficeDev/microsoft-graph-docs/tree/master/content/overview

::remarked below line as we are not going to use walkthroughs folder
::%APIDOCS_PATH%\apidocs.exe publish --path %DEPLOYMENT_SOURCE%\content\walkthroughs --output %DEPLOYMENT_TARGET_DIR%\platform --template %DEPLOYMENT_TEMPLATE% --format mustache --insert-gitInfo true --gitUrl https://github.com/OfficeDev/microsoft-graph-docs/tree/master/content/walkthroughs

%APIDOCS_PATH%\apidocs.exe publish --path %DEPLOYMENT_SOURCE%\content\get-started --output %DEPLOYMENT_TARGET_DIR%\platform --template %DEPLOYMENT_TEMPLATE% --format mustache --insert-gitInfo true --gitUrl https://github.com/OfficeDev/microsoft-graph-docs/tree/master/content/get-started
