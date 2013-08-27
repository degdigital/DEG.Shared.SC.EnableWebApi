DEG.Shared.SC.EnableWebApi
==========================

This module applies the hooks necessary to enable custom WebApi controllers in a Sitecore project.

# Registering Routes

The default WebApi route is registered for you in the /WebApi/RegisterWebApiRoute.cs
You can modify or add an custom routes here.

# Sitecore Pipeline Integration

This module hooks into 2 places in the Sitecore pipeline:
* initialize pipeline, in order to register the WebApi routes
* httpRequestBegin pipeline, in order to detect WebApi requests, and abort the Sitecore pipeline as necessary

# Sitecore Context

Because the WebApi routes are detected near the middle of the httpRequestBegin pipeline, the static Sitecore context objects are constructed and available for use from within the WebApi controllers!

# Config Patching

This module uses Sitecore Config patching to hook into the appropriate pipelines. All of this magic happens in /App_Config/Include/www.DEG.Shared.SC.EnableWebApi.config
You are recommended NOT to modify this file.