const esbuild = require("esbuild");
const sassPlugin = require('esbuild-sass-plugin').sassPlugin;

esbuild.build({
    entryPoints: ['scss/app.scss'],
    plugins: [sassPlugin()],
    bundle: true,
    outdir: "../build/web",
    minify: true,
}).catch(() => process.exit(1))