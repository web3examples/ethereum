# Web3.js

## Create own browser version

Create a browser compatible version of web3.js 1.0
npm install -g web3
npm install -g browserify
npm link browserify
npm link web3
browserify web3-require.js -o web3-browserify.js 

## Use from Content Delivery Network

| CDN versions     | Dependencies
| --------------   | -------------
| [jsdelivr_web3]  | [jsdelivr_polyfill]


[jsdelivr_web3]:     https://cdn.jsdelivr.net/gh/ethereum/web3.js@1.2.1/dist/web3.min.js
[jsdelivr_polyfill]: https://cdn.jsdelivr.net/npm/babel-polyfill@6.26.0/dist/polyfill.min.js
