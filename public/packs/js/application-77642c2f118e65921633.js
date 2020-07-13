/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/application.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/application.js":
/*!*********************************************!*\
  !*** ./app/javascript/packs/application.js ***!
  \*********************************************/
/*! no static exports found */
/***/ (function(module, exports) {

throw new Error("Module build failed (from ./node_modules/babel-loader/lib/index.js):\nSyntaxError: /home/ubuntu/environment/word-frequency-comparator/app/javascript/packs/application.js: Unexpected token, expected \",\" (26:63)\n\n  24 |             $(this).removeClass();\n  25 |             $(this).addClass('checkbox checked fas fa-check-square fa-lg');\n> 26 |             console.log(\"class of checkbox is \" + $(this).class;\n     |                                                                ^\n  27 |         } else {\n  28 |             $(this).removeClass();\n  29 |             $(this).addClass('checkbox unchecked far fa-square fa-lg');\n    at Parser._raise (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:757:17)\n    at Parser.raiseWithData (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:750:17)\n    at Parser.raise (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:744:17)\n    at Parser.unexpected (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:8834:16)\n    at Parser.expect (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:8820:28)\n    at Parser.parseCallExpressionArguments (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:9862:14)\n    at Parser.parseSubscript (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:9782:31)\n    at Parser.parseSubscripts (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:9711:19)\n    at Parser.parseExprSubscripts (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:9694:17)\n    at Parser.parseMaybeUnary (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:9668:21)\n    at Parser.parseExprOps (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:9538:23)\n    at Parser.parseMaybeConditional (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:9511:23)\n    at Parser.parseMaybeAssign (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:9466:21)\n    at Parser.parseExpression (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:9418:23)\n    at Parser.parseStatementContent (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:11332:23)\n    at Parser.parseStatement (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:11203:17)\n    at Parser.parseBlockOrModuleBlockBody (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:11778:25)\n    at Parser.parseBlockBody (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:11764:10)\n    at Parser.parseBlock (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:11748:10)\n    at Parser.parseStatementContent (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:11279:21)\n    at Parser.parseStatement (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:11203:17)\n    at Parser.parseIfStatement (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:11555:28)\n    at Parser.parseStatementContent (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:11248:21)\n    at Parser.parseStatement (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:11203:17)\n    at Parser.parseBlockOrModuleBlockBody (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:11778:25)\n    at Parser.parseBlockBody (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:11764:10)\n    at Parser.parseBlock (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:11748:10)\n    at Parser.parseFunctionBody (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:10751:24)\n    at Parser.parseFunctionBodyAndFinish (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:10734:10)\n    at withTopicForbiddingContext (/home/ubuntu/environment/word-frequency-comparator/node_modules/@babel/parser/lib/index.js:11918:12)");

/***/ })

/******/ });
//# sourceMappingURL=application-77642c2f118e65921633.js.map