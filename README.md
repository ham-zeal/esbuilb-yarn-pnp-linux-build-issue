# it broke

## how to see the issue?

run:

```sh
yarn --inline-builds
```

on _any_ linux os.

## how to see if not on linux

run:

```sh
yarn fail:docker
```

## what do you see?

```sh
 > [5/5] RUN yarn --inline-builds:
#9 0.689 ➤ YN0000: ┌ Resolution step
#9 0.698 ➤ YN0000: └ Completed
#9 0.699 ➤ YN0000: ┌ Fetch step
#9 0.841 ➤ YN0000: └ Completed
#9 0.845 ➤ YN0000: ┌ Link step
#9 0.879 ➤ YN0008: │ esbuild@npm:0.13.3 must be rebuilt because its dependency tree changed
#9 1.192 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR /usr/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/lib/yarn-pnp-esbuild: 1: /usr/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/lib/yarn-pnp-esbuild: Syntax error: "&" unexpected
#9 1.192 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR child_process.js:830
#9 1.192 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     throw err;
#9 1.192 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     ^
#9 1.193 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR
#9 1.193 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR Error: Command failed: /usr/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/lib/yarn-pnp-esbuild --version
#9 1.193 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at checkExecSyncError (child_process.js:790:11)
#9 1.193 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at Object.execFileSync (child_process.js:827:15)
#9 1.194 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at Object.<anonymous> (/usr/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/bin/esbuild:99:26)
#9 1.194 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at Module._compile (internal/modules/cjs/loader.js:1085:14)
#9 1.194 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at Object.Module._extensions..js (internal/modules/cjs/loader.js:1114:10)
#9 1.194 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at Module.load (internal/modules/cjs/loader.js:950:32)
#9 1.194 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at Function.external_module_.Module._load (/usr/app/.pnp.cjs:9590:14)
#9 1.194 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at Function.executeUserEntryPoint [as runMain] (internal/modules/run_main.js:76:12)
#9 1.194 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at internal/main/run_main_module.js:17:47 {
#9 1.194 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR   status: 2,
#9 1.194 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR   signal: null,
#9 1.195 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR   output: [ null, null, null ],
#9 1.195 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR   pid: 50,
#9 1.195 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR   stdout: null,
#9 1.195 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR   stderr: null
#9 1.195 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR }
#9 1.201 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR child_process.js:830
#9 1.201 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     throw err;
#9 1.202 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     ^
#9 1.202 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR
#9 1.202 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR Error: Command failed: node /usr/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/bin/esbuild --version
#9 1.202 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR /usr/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/lib/yarn-pnp-esbuild: 1: /usr/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/lib/yarn-pnp-esbuild: Syntax error: "&" unexpected
#9 1.202 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR child_process.js:830
#9 1.202 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     throw err;
#9 1.202 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     ^
#9 1.202 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR
#9 1.202 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR Error: Command failed: /usr/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/lib/yarn-pnp-esbuild --version
#9 1.202 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at checkExecSyncError (child_process.js:790:11)
#9 1.202 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at Object.execFileSync (child_process.js:827:15)
#9 1.203 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at Object.<anonymous> (/usr/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/bin/esbuild:99:26)
#9 1.203 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at Module._compile (internal/modules/cjs/loader.js:1085:14)
#9 1.203 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at Object.Module._extensions..js (internal/modules/cjs/loader.js:1114:10)
#9 1.203 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at Module.load (internal/modules/cjs/loader.js:950:32)
#9 1.203 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at Function.external_module_.Module._load (/usr/app/.pnp.cjs:9590:14)
#9 1.203 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at Function.executeUserEntryPoint [as runMain] (internal/modules/run_main.js:76:12)
#9 1.203 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at internal/main/run_main_module.js:17:47 {
#9 1.203 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR   status: 2,
#9 1.203 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR   signal: null,
#9 1.203 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR   output: [ null, null, null ],
#9 1.203 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR   pid: 50,
#9 1.204 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR   stdout: null,
#9 1.204 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR   stderr: null
#9 1.204 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR }
#9 1.204 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR
#9 1.204 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at checkExecSyncError (child_process.js:790:11)
#9 1.204 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at Object.execFileSync (child_process.js:827:15)
#9 1.204 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at validateBinaryVersion (/usr/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/install.js:64:32)
#9 1.204 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at Object.<anonymous> (/usr/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/install.js:98:3)
#9 1.204 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at Module._compile (internal/modules/cjs/loader.js:1085:14)
#9 1.204 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at Object.Module._extensions..js (internal/modules/cjs/loader.js:1114:10)
#9 1.204 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at Module.load (internal/modules/cjs/loader.js:950:32)
#9 1.204 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at Function.external_module_.Module._load (/usr/app/.pnp.cjs:9590:14)
#9 1.204 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at Function.executeUserEntryPoint [as runMain] (internal/modules/run_main.js:76:12)
#9 1.204 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     at internal/main/run_main_module.js:17:47 {
#9 1.205 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR   status: 1,
#9 1.205 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR   signal: null,
#9 1.205 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR   output: [
#9 1.205 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     null,
#9 1.205 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     Buffer(0) [Uint8Array] [],
#9 1.205 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     Buffer(1144) [Uint8Array] [
#9 1.205 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR        47, 117, 115, 114,  47,  97, 112, 112,  47,  46, 121,  97,
#9 1.205 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR       114, 110,  47, 117, 110, 112, 108, 117, 103, 103, 101, 100,
#9 1.205 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR        47, 101, 115,  98, 117, 105, 108, 100,  45, 110, 112, 109,
#9 1.205 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR        45,  48,  46,  49,  51,  46,  51,  45,  48,  99,  55,  50,
#9 1.205 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR        56,  52,  54, 101,  48,  51,  47, 110, 111, 100, 101,  95,
#9 1.205 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR       109, 111, 100, 117, 108, 101, 115,  47, 101, 115,  98, 117,
#9 1.205 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR       105, 108, 100,  47, 108, 105,  98,  47, 121,  97, 114, 110,
#9 1.205 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR        45, 112, 110, 112,  45, 101, 115,  98, 117, 105, 108, 100,
#9 1.205 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR        58,  32,  49,  58,
#9 1.205 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR       ... 1044 more items
#9 1.205 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     ]
#9 1.205 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR   ],
#9 1.205 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR   pid: 43,
#9 1.206 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR   stdout: Buffer(0) [Uint8Array] [],
#9 1.206 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR   stderr: Buffer(1144) [Uint8Array] [
#9 1.206 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR      47, 117, 115, 114,  47,  97, 112, 112,  47,  46, 121,  97,
#9 1.206 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     114, 110,  47, 117, 110, 112, 108, 117, 103, 103, 101, 100,
#9 1.206 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR      47, 101, 115,  98, 117, 105, 108, 100,  45, 110, 112, 109,
#9 1.206 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR      45,  48,  46,  49,  51,  46,  51,  45,  48,  99,  55,  50,
#9 1.206 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR      56,  52,  54, 101,  48,  51,  47, 110, 111, 100, 101,  95,
#9 1.206 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     109, 111, 100, 117, 108, 101, 115,  47, 101, 115,  98, 117,
#9 1.206 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     105, 108, 100,  47, 108, 105,  98,  47, 121,  97, 114, 110,
#9 1.206 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR      45, 112, 110, 112,  45, 101, 115,  98, 117, 105, 108, 100,
#9 1.206 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR      58,  32,  49,  58,
#9 1.206 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR     ... 1044 more items
#9 1.206 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR   ]
#9 1.206 ➤ YN0000: │ esbuild@npm:0.13.3 STDERR }
#9 1.210 ➤ YN0009: │ esbuild@npm:0.13.3 couldn't be built successfully (exit code 1, logs can be found here: /tmp/xfs-3033559e/build.log)
#9 1.210 ➤ YN0000: └ Completed in 0s 365ms
#9 1.215 ➤ YN0000: Failed with errors in 0s 527ms
------
executor failed running [/bin/sh -c yarn --inline-builds]: exit code: 1
```

## does it work without pnp?

yes.

## does it work on macos and windows?

yes, it's only on linux and only for PnP.
