# Web3.js in browser  <!-- omit in toc --> 
([Up](..) [Home](..\..))
Web3.js examples in browser

# HTML and Javascript
  
| Feature           | Link                  | Github
| ---------         | -------               | ----------- 
| Version           | [version]             | [version_gh]
| Metamask inserted | [metamask_inserted]   | [metamask_inserted_gh]
| getBlockNumber    | [getBlockNumber]      | [getBlockNumber_gh]
| sendTransaction   | [sendtransaction]     | [sendtransaction_gh]
|
|
| web3js_web | [web3js_web] | [web3js_web_gh]


[version]:           https://web3examples.com/ethereum/web3js_browser/version.html
[web3js_web]:        https://web3examples.com/ethereum/web3js_browser/web3js_web.html
[metamask_inserted]: https://web3examples.com/ethereum/web3js_browser/metamask_inserted.html
[getBlockNumber]:    https://web3examples.com/ethereum/web3js_browser/getBlockNumber.html
[sendtransaction]:   https://web3examples.com/ethereum/web3js_browser/sendtransaction.html

[version_gh]:            https://github.com/web3examples/ethereum/blob/master/web3js_browser/version.html
[web3js_web_gh]:         https://github.com/web3examples/ethereum/blob/master/web3js_browser/web3js_web.html
[metamask_inserted_gh]:  https://github.com/web3examples/ethereum/blob/master/web3js_browser/metamask_inserted.html
[getBlockNumber_gh]:     https://github.com/web3examples/ethereum/blob/master/web3js_browser/getBlockNumber.html
[sendtransaction_gh]:    https://github.com/web3examples/ethereum/blob/master/web3js_browser/sendtransaction.html


# Browserify

Create a browser compatible version of web3.js 1.x
* npm install -g web3
* npm link web3
* npm install -g [pkg_browserify]
* browserify [web3-require.js] -o [web3-browserify.js]

Result is accessible via: [web3examples_web3-browserify.js]

[browserify]:                      https://www.npmjs.com/package/browserify
[web3-require.js]:                 https://github.com/web3examples/ethereum/blob/master/web3js_browser/web3-require.js
[web3-browserify.js]:              https://github.com/web3examples/ethereum/blob/master/web3js_browser/web3-browserify.js
[web3examples_web3-browserify.js]: http://web3examples.com/ethereum/web3js_browser/web3-browserify.js

# SimpleHTTPServer

Use the SimpleHTTPServer in the following way:
* [go-web.cmd]

[go-web.cmd]: https://github.com/web3examples/ethereum/blob/master/web3js_browser/go-web.cmd
