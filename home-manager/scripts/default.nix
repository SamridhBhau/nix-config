{
  pkgs,
    ...
}:

let 
scriptsDir = ./scripts;

dirFiles = builtins.readDir scriptsDir;

shellFiles = builtins.filter (name: dirFiles.${name} == "regular") (builtins.attrNames dirFiles);

mkScript = name: pkgs.writeShellScriptBin (builtins.replaceStrings [ ".sh" ] [ "" ] name) (
    builtins.readFile (scriptsDir + "/${name}")
    );

scripts = map mkScript shellFiles;
in
{
  home.packages = scripts;
}
