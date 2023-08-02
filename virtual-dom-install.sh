#!/bin/bash

echo node_modules dist > .gitignore
touch webpack.config.js

mkdir src
cd src
touch index.html
touch index.ts
touch main.ts

cd ..
npm i -D webpack webpack-cli webpack-dev-server html-webpack-plugin
npm i -D typescript ts-loader

npm i -D hyperscript hyperscript-helpers @types/hyperscript
npm i -D virtual-dom @types/virtual-dom

npm i rxjs

git init

