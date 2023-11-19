'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "d1ae22bf2528e9c3a99555f3ae35ffb1",
"index.html": "34bb3617822c2552c7000e74ff5a83e0",
"/": "34bb3617822c2552c7000e74ff5a83e0",
"main.dart.js": "09e0813b03f20c76f4f2c607602aa461",
"Icon-192.png": "7c2600b631a162e4ff83fcb9b36718a0",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "62503593932bbf1136ae849d378606b3",
"icons/Icon-192.png": "7c2600b631a162e4ff83fcb9b36718a0",
"icons/Icon-maskable-192.png": "7c2600b631a162e4ff83fcb9b36718a0",
"icons/Icon-maskable-512.png": "16eadc2216645261823cfe0e7e54c7bd",
"icons/Icon-512.png": "16eadc2216645261823cfe0e7e54c7bd",
"manifest.json": "3fc29f9294b755bca0378065b89e216e",
"assets/AssetManifest.json": "acc53fb1ab467954d1a6c460a35b32b8",
"assets/NOTICES": "de48e6808c0edf348843257e8e679399",
"assets/FontManifest.json": "e906870da1421a8db718e9b7b52ce17d",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "b72c617acdf2227c8b1413215f620711",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "a5d7457fda15b7622c14f432ba63039a",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "f25e8e701660fb45e2a81ff3f43c6d5c",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "cfd24ba71a64ab9f6dc0937ddeab8b38",
"assets/fonts/Montserrat-Medium.ttf": "bdb7ba651b7bdcda6ce527b3b6705334",
"assets/fonts/Montserrat-Light.ttf": "94fbe93542f684134cad1d775947ca92",
"assets/fonts/Montserrat-ExtraLight.ttf": "a7fe50578d9aa3966c925cb9722db03a",
"assets/fonts/Montserrat-Thin.ttf": "b3638b16904211d1d24d04ce53810c4d",
"assets/fonts/Montserrat-Bold.ttf": "ed86af2ed5bbaf879e9f2ec2e2eac929",
"assets/fonts/Montserrat-SemiBold.ttf": "cc10461cb5e0a6f2621c7179f4d6de17",
"assets/fonts/Montserrat-ExtraBold.ttf": "9e07cac927a9b4d955e2138bf6136d6a",
"assets/fonts/Montserrat-Black.ttf": "cce7ff8c1d7999f907b6760fbe75d99d",
"assets/fonts/Montserrat-Regular.ttf": "5e077c15f6e1d334dd4e9be62b28ac75",
"assets/fonts/MaterialIcons-Regular.otf": "e6e692479cc56b7dcb1f1b33d47e49cf",
"assets/fonts/Montserrat-Italic.ttf": "cc53ad8bb1c801746c831bb7ce493f74",
"assets/assets/support.png": "21523dbef4e81a4e4aa56170ddda6139",
"assets/assets/moped.png": "d59e6984990f679cb1f2b9ab81c4c43e",
"assets/assets/mantenimiento.png": "be3e2ed14a4c9b4ad26033489ea187a7",
"assets/assets/download.png": "a08a75259d04d15da0a8ac5969ad4502",
"assets/assets/flags/CL.png": "43453c2b8fe6deaf56a0d6ccd18ff7cc",
"assets/assets/flags/BO.png": "48682a37387af1e1431f7cda49f7f670",
"assets/assets/flags/PY.png": "6a1ecde9c6a269536f32975c7df51a98",
"assets/assets/flags/PE.png": "734fddde28f63d6fb4318b3786181610",
"assets/assets/discount.png": "0282c6e83cf6e6681bf2ea0d2bc1b2e5",
"assets/assets/instagram.png": "9f2ea5c9281e49ee3572d80dc9eb050d",
"assets/assets/x.png": "dab6faa750e142b9c0e84f71db06088d",
"assets/assets/digital.png": "552a64e08f472fa0c8494f588dc3d4c8",
"assets/assets/nosotros.png": "130a7e33794c3c1206b0a35ea97e0070",
"assets/assets/moped_delivery_hover.png": "ca20c135e1041abf5624ed08252fc29c",
"assets/assets/MOTO2.png": "695dc0a07e506fda9dac088e9e320bee",
"assets/assets/component_hover.png": "8e77a3ae280d937ca30386911429feaf",
"assets/assets/MOTO1.png": "8a5750d54ba027a02c20bdb04ac5caf0",
"assets/assets/mantenimiento_hover.png": "3a1de2c22399d5714eacbfc1dc37569d",
"assets/assets/ES.png": "7808cb2afc390ec043131424e4cf8355",
"assets/assets/tiktok.png": "a3a8108d9f22385a02ce179a68af77fb",
"assets/assets/sostenibilidad.png": "98bd64716e23284c25e1876b63ab0cd0",
"assets/assets/batery.png": "784e180e2888ee6b15b3db566c879d2a",
"assets/assets/support_hover.png": "630092d67cc854e579e9dcb310d599b1",
"assets/assets/component.png": "2820c837b803f533241159c4057c2182",
"assets/assets/logo.png": "fb1d2557992488df6b923d3529e72bd3",
"assets/assets/intro.mp4": "e5e699b206fc3b91baa52a02f1c59bd2",
"assets/assets/moped_delivery.png": "39d72f5ca56de20d442ae9ba3e0dd955",
"assets/assets/batery_hover.png": "bb0520992e012bb8a3ac1f5e4f22435b",
"assets/assets/discount_hover.png": "a5162d0ff207b2ff9500e27643ef454c",
"assets/assets/reemplazo.png": "344f9cd0537fda9981477cabd141d46f",
"assets/assets/facebook.png": "3257f53e19435ed78f4c33f1563dbaab",
"assets/assets/reemplazo_hover.png": "5f8e18fbaaa1b432f36d56b459ed0b88",
"assets/assets/chat.png": "e06b4b22d6e6c8e9ddae42482ef6628d",
"assets/assets/seguro.png": "a1646302463573fa6bd724aa204a68c1",
"assets/assets/linkeding.png": "967b98fb15b224f41cee5ccfb8212e7a",
"assets/assets/cb.png": "82989a8ca83c75bd2a04120741f1b816",
"assets/assets/seguro_hover.png": "b40cfb2ca7e67bacc1345ccf74d81b84",
"Icon-512.png": "16eadc2216645261823cfe0e7e54c7bd",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "1a074e8452fe5e0d02b112e22cdcf455",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "be0e3b33510f5b7b0cc76cc4d3e50048",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "42df12e09ecc0d5a4a34a69d7ee44314",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
