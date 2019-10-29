https://reactjs.org/docs/create-a-new-react-app.html#create-react-app
https://github.com/facebook/create-react-app
```
$ brew install npm
$ brew upgrade npm   # npm 12.11.1

$ npx create-react-app front-proto # npx is not a typo — it’s a package runner tool that comes with npm 5.2+.
$ cd front-proto/

$ npm start
```

https://pusher.com/tutorials/consume-restful-api-react
https://reacttraining.com/react-router/web/guides/quick-start

# Semi-prod
```
$ yarn run build
```
Then assets are under folder `frontend/front-proto/build`

```
$ tree build
build
├── asset-manifest.json
├── favicon.ico
├── index.html
├── logo192.png
├── logo512.png
├── manifest.json
├── precache-manifest.ec9eb1c8fda0509707e956820e23c4e5.js
├── robots.txt
├── service-worker.js
└── static
    ├── css
    │   ├── main.b100e6da.chunk.css
    │   └── main.b100e6da.chunk.css.map
    └── js
        ├── 2.7a522583.chunk.js
        ├── 2.7a522583.chunk.js.map
        ├── main.4fb63e66.chunk.js
        ├── main.4fb63e66.chunk.js.map
        ├── runtime-main.d2045a94.js
        └── runtime-main.d2045a94.js.map

3 directories, 17 files
```
