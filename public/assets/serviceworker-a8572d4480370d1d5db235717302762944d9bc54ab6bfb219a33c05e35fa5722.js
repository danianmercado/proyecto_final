function onInstall(e){console.log("[Serviceworker]","Installing!",e),e.waitUntil(caches.open(CACHE_NAME).then(function(e){return e.addAll(["/assets/application-0c1ddf09379f2b5a3736897eb57816f9c1cd70782b315049c183496536db571f.js","/assets/application-756a60b48080bfa95bff96a3463765f3fa21cb44be7a66895a2abf90e6e0e9a2.css","/offline.html"])}))}function onActivate(e){console.log("[Serviceworker]","Activating!",e),e.waitUntil(caches.keys().then(function(e){return Promise.all(e.filter(function(e){return 0!==e.indexOf(CACHE_VERSION)}).map(function(e){return caches["delete"](e)}))}))}function onFetch(t){t.respondWith(fetch(t.request)["catch"](function(){return caches.match(t.request).then(function(e){return e||("navigate"===t.request.mode||"GET"===t.request.method&&t.request.headers.get("accept").includes("text/html")?(console.log("[Serviceworker]","Fetching offline content",t),caches.match("/offline.html")):void 0)})}))}var CACHE_VERSION="v1",CACHE_NAME=CACHE_VERSION+":sw-cache-";self.addEventListener("install",onInstall),self.addEventListener("activate",onActivate),self.addEventListener("fetch",onFetch);