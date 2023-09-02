```sh
nix run '.#homeConfigurations.test-test.activationPackage'
```
```sh
trace: warning: lib.nixos.evalModules is experimental and subject to change. See nixos/lib/default.nix
error:
       … while calling the 'head' builtin

         at /nix/store/yf26s7734ql7q05zlq6nq4y5q3rjyhj7-source/lib/attrsets.nix:720:11:

          719|         || pred here (elemAt values 1) (head values) then
          720|           head values
             |           ^
          721|         else

       … while calling the 'foldl'' builtin

         at /nix/store/yf26s7734ql7q05zlq6nq4y5q3rjyhj7-source/lib/trivial.nix:63:8:

           62|     let reverseApply = x: f: f x;
           63|     in builtins.foldl' reverseApply val functions;
             |        ^
           64|

       (stack trace truncated; use '--show-trace' to show the full trace)

       error: infinite recursion encountered

       at /nix/store/yf26s7734ql7q05zlq6nq4y5q3rjyhj7-source/lib/modules.nix:261:21:

          260|           (regularModules ++ [ internalModule ])
          261|           ({ inherit lib options config specialArgs; } // specialArgs);
             |                     ^
          262|         in mergeModules prefix (reverseList collected);
```
