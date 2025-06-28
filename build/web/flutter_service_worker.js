'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "ee9a6a912341654723d54a631d7a0f1c",
"assets/AssetManifest.bin.json": "6e3919c0932632f86cf864e79f1bc03d",
"assets/AssetManifest.json": "f87c241a575d7dd8ca6bb4f9fef34ff3",
"assets/assets/aarogya%2520india-left.png": "37a72585b03e707467cd701587627793",
"assets/assets/aarogya%2520india-portrait.png": "9d914852012c3a8094c058b9f83fa74a",
"assets/assets/AppStore.png": "51a2af0582b37062f664c064f6d76bb3",
"assets/assets/ballon.png": "e676b65e37c2c085f49d7b5f81db0e89",
"assets/assets/edansh-left.png": "4e6ee087b163de9ca4d4d4968060da1b",
"assets/assets/edansh-portrait.png": "4dc0e067af964876fffe793dd3575768",
"assets/assets/ehs.png": "1b8316f8f89905a6c926a4922b671f16",
"assets/assets/email.png": "c106dff32d7d0bf65ece244cff3cb1d4",
"assets/assets/fb.jpeg": "ad5b7e6a3085dc50038d321c2ea2e18a",
"assets/assets/github.png": "da444a76f9608141e0ed4180d7d270a9",
"assets/assets/google.jpeg": "7eb9878532f49237cb68220fe24b358f",
"assets/assets/gurupayroll-left.png": "a12ec5a330392cde779af24f1e890c1b",
"assets/assets/gurupayroll-portrait.png": "fdc979adf76c94dfd656cc6c3a410fd7",
"assets/assets/gurupayroll.png": "0b7aeda8a03e32a62d14e37a564ab831",
"assets/assets/harrow.png": "a97e08e9e4a66c6718ea1947ba282022",
"assets/assets/icon.png": "d88d79105ebf0aa2a6108e2d2b662e71",
"assets/assets/image%252018.png": "bad3446665e637cb85df6e3dda1e4f18",
"assets/assets/image%252019.png": "4ba8cc90e8c4fb139132918f4733d80e",
"assets/assets/instagram.jpeg": "7940b23ea5b8ca820a6d04b58bd09780",
"assets/assets/isnt-left.png": "b5242edce5b4c018d88134a95dbcc90f",
"assets/assets/isnt-portrait.png": "bb323235b4f81f239254f11114ab1dce",
"assets/assets/kcmt.png": "9eabb3033607255bce32302973f13106",
"assets/assets/laptop_bg.png": "e5cb39e04c268074d40f89124a869a3b",
"assets/assets/linkedin.jpeg": "bbecfafe45dbb7a87b9295852a01a6eb",
"assets/assets/linkedin.png": "9b97b3e1f938c4389096010ba6933dd8",
"assets/assets/manoharjwellers-left.png": "6aa2423fa7fa4c5dba703374ae05d824",
"assets/assets/manoharjwellers-portrait.png": "ea936c138172d9359fad974215e198d5",
"assets/assets/mother%2520dairy-left.png": "7689cf9f1edebcf7d8cec29c61d57833",
"assets/assets/mother%2520dairy-portrait.png": "afe3a2c728e6617f8c685a0a546d6584",
"assets/assets/Nearez-left.png": "967811592ff506a751eabb2e998dc547",
"assets/assets/Nearez-portrait.png": "40ff401e0a2ef1fa59cbe3ddeaffd351",
"assets/assets/peacock%2520feather.png": "fc151dbb24f657531497e7907968cf85",
"assets/assets/personalProjectSample.png": "dcdc0cf76c0b08074da6f7da966eb7c6",
"assets/assets/playStore.png": "b7e7a78bcad603b1433117584a0ab692",
"assets/assets/snapchat.jpeg": "4973e9b29a2d11a66f10cf7bb1297d06",
"assets/assets/softareo.png": "34aefea8a66ef045546fe9da29a1454a",
"assets/assets/Subtract%2520(1).png": "0775d25443300c982a831cb90f43d4f8",
"assets/assets/Subtract.png": "d6a8ed6228390f081a3a05e37579d263",
"assets/assets/telegram.jpeg": "87ab0906044b0702a88c86bca313c34d",
"assets/assets/telegram.png": "a37a20bf1e77b8367892d633743baf10",
"assets/assets/twitter.jpeg": "68aec46bc05ee1c9616bdd0c74c55cc4",
"assets/assets/user.png": "3f1216f5bec50b5dcf50156a1eef3544",
"assets/assets/user2.png": "6200b326125c2a4e953da86cc071a92d",
"assets/assets/vbspu.png": "7b68474b4dadfc49477ddc1a3a9cf79c",
"assets/assets/VRIPL.png": "a86ec11ab06d594d8da328f74c6c118f",
"assets/assets/whatsapp.jpeg": "33ed92b396c4a5ff22f16a108711128b",
"assets/assets/whatsapp.png": "581d24b44ced95adb1de59708f20f8f7",
"assets/assets/yantru-left.png": "6d0843dc7f72c073e2099fca15ea3094",
"assets/assets/yantru-portrait.png": "b3b8bd176e9524e6bbcc7b0e081da648",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "0db35ae7a415370b89e807027510caf0",
"assets/NOTICES": "3f42fdbaeff22aa75a07e698e3f90ad4",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.js.symbols": "48c83a2ce573d9692e8d970e288d75f7",
"canvaskit/canvaskit.wasm": "1f237a213d7370cf95f443d896176460",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.js.symbols": "a012ed99ccba193cf96bb2643003f6fc",
"canvaskit/chromium/canvaskit.wasm": "b1ac05b29c127d86df4bcfbf50dd902a",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "262f4827a1317abb59d71d6c587a93e2",
"canvaskit/skwasm.wasm": "9f0c0c02b82a910d12ce0543ec130e60",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"flutter_bootstrap.js": "d589e3bf57812aaaae8e5428e3dfa610",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "8b408c841af94fe97d27a3fd837aefd5",
"/": "8b408c841af94fe97d27a3fd837aefd5",
"main.dart.js": "9f6af731c64f683b83860dd415729d21",
"manifest.json": "4734db19b089f1a4d7b37fdc9824bcd2",
"version.json": "009c9e65172e010890f7f65fde438006"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
