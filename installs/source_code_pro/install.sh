#!/usr/bin/env zsh

_install_sc_pro () {
  version=1.010

  cd "$(dirname $0)"

  echo "\n* Downloading version $version of source code pro font..."
  rm -f SourceCodePro_FontsOnly-$version.zip
  rm -rf SourceCodePro_FontsOnly-$version
  wget https://github.com/downloads/adobe/source-code-pro/SourceCodePro_FontsOnly-$version.zip -O SourceCodePro_FontsOnly-$version.zip

  echo "\n* Unziping package..."
  unzip SourceCodePro_FontsOnly-$version.zip
  mkdir -p ~/.local/share/fonts

  echo "\n* Copying fonts to ~/.local/share/fonts/..."
  mv SourceCodePro_FontsOnly-$version/OTF/*.otf ~/.local/share/fonts/

  echo "\n* Updating font cache..."
  sudo fc-cache -f

  echo "\n* Looking for 'Source Code Pro' in installed fonts"
  fc-list | grep "Source Code Pro"

  echo "\n* Now, you can use the 'Source Code Pro' fonts"

  echo "\n* cleaning up..."
  rm *SourceCodePro*

  echo "\n* Finished"
}


echo "Do you wish to install SourceCode Pro font?"
select yn in "Yes" "No"
case $yn in
  Yes ) _install_sc_pro;;
  No ) exit;;
esac