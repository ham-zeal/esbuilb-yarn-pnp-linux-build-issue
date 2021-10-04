# it broke

## how to see the issue?

run:

    yarn
    yarn fail
    yarn show:fail
    ///////////// ENTER THE CONTAINER ///////////////
    yarn

see:

```
/usr/src/app $ yarn
➤ YN0065: Yarn will periodically gather anonymous telemetry: https://yarnpkg.com/advanced/telemetry
➤ YN0065: Run yarn config set --home enableTelemetry 0 to disable

➤ YN0000: ┌ Resolution step
➤ YN0000: └ Completed
➤ YN0000: ┌ Fetch step
➤ YN0000: └ Completed
➤ YN0000: ┌ Link step
➤ YN0008: │ esbuild@npm:0.13.3 must be rebuilt because its dependency tree changed
➤ YN0009: │ esbuild@npm:0.13.3 couldn't be built successfully (exit code 1, logs can be found here: /tmp/xfs-af7f11a7/build.log)
➤ YN0000: └ Completed in 0s 255ms
➤ YN0000: Failed with errors in 0s 432ms
```

which says:

```
/usr/src/app $ cat  /tmp/xfs-4860a3bc/build.log
# This file contains the result of Yarn building a package (esbuild@npm:0.13.3)
# Script name: postinstall

child_process.js:830
    throw err;
    ^

<ref *1> Error: spawnSync /usr/src/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/lib/yarn-pnp-esbuild Unknown system error -8
    at Object.spawnSync (internal/child_process.js:1077:20)
    at spawnSync (child_process.js:776:24)
    at Object.execFileSync (child_process.js:822:15)
    at Object.<anonymous> (/usr/src/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/bin/esbuild:99:26)
    at Module._compile (internal/modules/cjs/loader.js:1085:14)
    at Object.Module._extensions..js (internal/modules/cjs/loader.js:1114:10)
    at Module.load (internal/modules/cjs/loader.js:950:32)
    at Function.external_module_.Module._load (/usr/src/app/.pnp.cjs:9590:14)
    at Function.executeUserEntryPoint [as runMain] (internal/modules/run_main.js:76:12)
    at internal/main/run_main_module.js:17:47 {
  errno: -8,
  code: 'Unknown system error -8',
  syscall: 'spawnSync /usr/src/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/lib/yarn-pnp-esbuild',
  path: '/usr/src/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/lib/yarn-pnp-esbuild',
  spawnargs: [ '--version' ],
  error: [Circular *1],
  status: null,
  signal: null,
  output: null,
  pid: 51,
  stdout: null,
  stderr: null
}
child_process.js:830
    throw err;
    ^

Error: Command failed: node /usr/src/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/bin/esbuild --version
child_process.js:830
    throw err;
    ^

<ref *1> Error: spawnSync /usr/src/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/lib/yarn-pnp-esbuild Unknown system error -8
    at Object.spawnSync (internal/child_process.js:1077:20)
    at spawnSync (child_process.js:776:24)
    at Object.execFileSync (child_process.js:822:15)
    at Object.<anonymous> (/usr/src/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/bin/esbuild:99:26)
    at Module._compile (internal/modules/cjs/loader.js:1085:14)
    at Object.Module._extensions..js (internal/modules/cjs/loader.js:1114:10)
    at Module.load (internal/modules/cjs/loader.js:950:32)
    at Function.external_module_.Module._load (/usr/src/app/.pnp.cjs:9590:14)
    at Function.executeUserEntryPoint [as runMain] (internal/modules/run_main.js:76:12)
    at internal/main/run_main_module.js:17:47 {
  errno: -8,
  code: 'Unknown system error -8',
  syscall: 'spawnSync /usr/src/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/lib/yarn-pnp-esbuild',
  path: '/usr/src/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/lib/yarn-pnp-esbuild',
  spawnargs: [ '--version' ],
  error: [Circular *1],
  status: null,
  signal: null,
  output: null,
  pid: 51,
  stdout: null,
  stderr: null
}

    at checkExecSyncError (child_process.js:790:11)
    at Object.execFileSync (child_process.js:827:15)
    at validateBinaryVersion (/usr/src/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/install.js:64:32)
    at Object.<anonymous> (/usr/src/app/.yarn/unplugged/esbuild-npm-0.13.3-0c72846e03/node_modules/esbuild/install.js:98:3)
    at Module._compile (internal/modules/cjs/loader.js:1085:14)
    at Object.Module._extensions..js (internal/modules/cjs/loader.js:1114:10)
    at Module.load (internal/modules/cjs/loader.js:950:32)
    at Function.external_module_.Module._load (/usr/src/app/.pnp.cjs:9590:14)
    at Function.executeUserEntryPoint [as runMain] (internal/modules/run_main.js:76:12)
    at internal/main/run_main_module.js:17:47 {
  status: 1,
  signal: null,
  output: [
    null,
    Buffer(0) [Uint8Array] [],
    Buffer(1322) [Uint8Array] [
       99, 104, 105, 108, 100,  95, 112, 114, 111,  99, 101, 115,
      115,  46, 106, 115,  58,  56,  51,  48,  10,  32,  32,  32,
       32, 116, 104, 114, 111, 119,  32, 101, 114, 114,  59,  10,
       32,  32,  32,  32,  94,  10,  10,  60, 114, 101, 102,  32,
       42,  49,  62,  32,  69, 114, 114, 111, 114,  58,  32, 115,
      112,  97, 119, 110,  83, 121, 110,  99,  32,  47, 117, 115,
      114,  47, 115, 114,  99,  47,  97, 112, 112,  47,  46, 121,
       97, 114, 110,  47, 117, 110, 112, 108, 117, 103, 103, 101,
      100,  47, 101, 115,
      ... 1222 more items
    ]
  ],
  pid: 44,
  stdout: Buffer(0) [Uint8Array] [],
  stderr: Buffer(1322) [Uint8Array] [
     99, 104, 105, 108, 100,  95, 112, 114, 111,  99, 101, 115,
    115,  46, 106, 115,  58,  56,  51,  48,  10,  32,  32,  32,
     32, 116, 104, 114, 111, 119,  32, 101, 114, 114,  59,  10,
     32,  32,  32,  32,  94,  10,  10,  60, 114, 101, 102,  32,
     42,  49,  62,  32,  69, 114, 114, 111, 114,  58,  32, 115,
    112,  97, 119, 110,  83, 121, 110,  99,  32,  47, 117, 115,
    114,  47, 115, 114,  99,  47,  97, 112, 112,  47,  46, 121,
     97, 114, 110,  47, 117, 110, 112, 108, 117, 103, 103, 101,
    100,  47, 101, 115,
    ... 1222 more items
  ]
```

thanks evan!
