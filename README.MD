Nuxeo.io docker image for : Kibana secured with a doorman
=====================================

This repository holds the Dockerfile for `Kibana` secured behind a `doorman` which is in use in [http://github.com/nuxeo/nuxeo.io](nuxeo.io)

Image informations
------------------

- Base image: dockerfile/nodejs
- Kibana version: 4.0.2
- Doorman version: master

Docker image environment variables
------------------

- `ESL_HOST`: Host of an elasticsearch cluster
- `ESL_PORT`: Port of his host
- `COOKIE_EXPIRATION`: Cookie expiration in day.
- `COOKIE_SECRET`: Cookie secret key
- `GITHUB_APPID`: Github Oauth app id
- `GITHUB_APPSECRET`: Github Oauth secret id
- `GITHUB_APPID`: Github Oauth app id
- `GITHUB_ORGANIZATION`: Github organization member
- `GOOGLE_CLIENTID`: Google Oauth client id
- `GOOGLE_CLIENTSECRET`: Google Oauth client secret
- `GOOGLE_DOMAIN`: Google authorized domain

About Nuxeo
-----------

Nuxeo provides a modular, extensible Java-based
[open source software platform for enterprise content management](http://www.nuxeo.com/en/products/ep),
and packaged applications for [document management](http://www.nuxeo.com/en/products/document-management),
[digital asset management](http://www.nuxeo.com/en/products/dam) and
[case management](http://www.nuxeo.com/en/products/case-management).

Designed by developers for developers, the Nuxeo platform offers a modern
architecture, a powerful plug-in model and extensive packaging
capabilities for building content applications.

More information on: <http://www.nuxeo.com/>
