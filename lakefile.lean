import Lake
open Lake DSL

package pnP2023 {
  -- add package configuration options here
}

lean_lib PnP2023 {
  -- add library configuration options here
}

@[default_target]
lean_exe pnP2023 {
  root := `Main
}

meta if get_config? env = some "dev" then -- dev is so not everyone has to build it
require «doc-gen4» from git "https://github.com/leanprover/doc-gen4" @ "main"