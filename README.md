# Starting point for an Elm app that deploys to Netlify

Currently this is a cobbling-together of various samples.

Kent wants to make a poker app, and if you're going to make a web app and have FUN with it,
you might as well do it in Elm.

The purpose of this is to ensemble with random people in our Tensegrity Discord server. (you get access if you support me on [Patreon](https://jessitron.com/patreon).)

## Development

### local

There's a [devcontainer](https://marketplace.visualstudio.com/items?itemName=ms-vscode-remote.remote-containers) definition for VSCode, in `.devcontainer`

Or, all you really need is node.js and `npm install`.

Develop using `elm reactor`

Build with `npm run build` and find the output in `dist/` (run http-server or something in there if you want)

### online

You can work on [GitPod](https://gitpod.io/#https://github.com/systemsthinking-dev/poker-in-elm) -- this should open a dev env.

This is configured in `.gitpod.yml` to point to `.devcontainer/Dockerfile`, which in turn is a default Node.js container with elm installed globally for convenience.

## Deployment

This app deploys on Netlify! Find it here: https://poker-in-elm.netlify.app/

It uses the default configuration: build is `npm run build` and the static site is in `/dist`
