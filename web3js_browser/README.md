# Web3.js browser  <!-- omit in toc --> 
([Up](..) [Home](..\..))
Web3.js examples in browser

# HTML and Javascript
  
| Feature           | Link                  | Github
| ---------         | -------               | ----------- 
| Version           | [version]             | [version_gh]
| Metamask inserted | [metamask_inserted]   | [metamask_inserted_gh]
| getBlockNumber    | [getBlockNumber]      | [getBlockNumber_gh]

| web3js_web | [web3js_web] | [web3js_web_gh]


[version]:           version.html
[web3js_web]:        web3js_web.html
[metamask_inserted]: metamask_inserted.html
[getBlockNumber]:    getBlockNumber.html

[version_gh]:            https://github.com/web3examples/ethereum/blob/master/web3js_browser/version.html
[web3js_web_gh]:         https://github.com/web3examples/ethereum/blob/master/web3js_browser/web3js_web.html
[metamask_inserted_gh]:  https://github.com/web3examples/ethereum/blob/master/web3js_browser/metamask_inserted.html
[getBlockNumber_gh]:     https://github.com/web3examples/ethereum/blob/master/web3js_browser/getBlockNumber.html

# Basics

Create a browser compatible version of web3.js 1.0
npm install -g web3
npm install -g browserify
npm link browserify
npm link web3
browserify web3-require.js -o web3-browserify.js 


