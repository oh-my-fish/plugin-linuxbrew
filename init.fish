set -l linuxbrew_bin_path "$HOME/.linuxbrew/bin"
set -l linuxbrew_sbin_path "$HOME/.linuxbrew/sbin"
set -l linuxbrew_manpath "$HOME/.linuxbrew/share/man"
set -l linuxbrew_infopath "$HOME/.linuxbrew/share/info"

contains -- $linuxbrew_bin_path $PATH
  or set -gx PATH $linuxbrew_bin_path $PATH

contains -- $linuxbrew_sbin_path $PATH
  or set -gx PATH $linuxbrew_sbin_path $PATH

contains -- $linuxbrew_manpath $MANPATH
  or set -gx MANPATH $linuxbrew_manpath $MANPATH

contains -- $linuxbrew_infopath $INFOPATH
  or set -gx INFOPATH $linuxbrew_infopath $INFOPATH

