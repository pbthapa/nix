{ writeShellScriptBin
, name ? "World!"
}:
writeShellScriptBin "hello" ''
  echo "Hello, ${name}!"
''
