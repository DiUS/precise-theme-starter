# DiUS Precise Theme

This is a theme for [Precise](http://precise.io) Portfolios and Profiles.
It provides the styling and layout for DiUS consultant profiles.

### Getting your development environment setup

After cloning this repository, you need to install:

* [Node.js](http://nodejs.org/)
* [NPM](https://www.npmjs.com/)
* [Grunt Cli](http://gruntjs.com/getting-started#installing-the-cli)

With that done:

1. Install project depenencies using `npm install`
2. Run the developer server with `grunt`


**Develop Profile**

Open http://localhost:9001/profile in your browser.

**Develop Portfolio**

Open http://localhost:9001/portfolio in your browser.

## Make it look good

With your development environment up and running you're ready to begin theme creation.

### What goes where

It's pretty simple:

* `package.json`: This file describes your NPM package.  The most important fields
and the `name` and `version`. If you have any dependencies such as a template engine
include them in the `dependencies` field. **Note** We recommend using
``bundledDependencies``.  This removes the need to installed dependencies from
NPM at runtime resulting in faster install and no downtime should NPM go down.
As with any software package you must bump the version on every release.

* `index.coffee`: We're using Coffeescript. If you prefer Javascript rename
this file to `index.js`.  This file is really important.  It's the glue between
the incoming JSON and your markup / css.   You must provide 2 functions: `renderProfile()`
and `renderPortfolio()`.  Both functions take a single argument - either the
Profile JSON object or the Portfolio JSON object. The job of this file is to
apply the JSON to the template and include relevant CSS.

* `profile.template`: This file contains the HTML Markup needed for your Profile.  You
can use from favourite templating language or stick with the one we used -- Handlebars.

* `portfolio.template`: Same as `profile.template` but for Portfolios.

* `style.css`:  All your CSS.

Also worthy of a mention is the example Profile and Portfolio JSON. `exampleProfile.json`
and `examplePortfolio.json`.  These files provide example data during development. You
can modify to suit your needs but you must ensure they conform to the Precise
schema.

## Deployment

When you are done with **making it look good** it's time to deploy. This command
will run all the steps necessary to create a release, including tagging, creating
an artefact and releasing it on Github.

1. Bump the version in your package.json file.
2. Stage the package.json change.
3. Commit that change with a message like "release 0.1.5"
4. Git tag ```git tag -a 0.1.5 -m 'release 0.1.5'```
4. Push the change to git
5. Package into tarball using

    $ npm pack

Once packaged:

1. Login to [Precise](http://precise.io)
2. Open the theme page /theme
3. Upload your new release from your local machine.
4. After a short pause the theme should be available to preview or select.
5. Preview the theme to ensure all is well before making permanent.
6. Rinse and repeat as required.

