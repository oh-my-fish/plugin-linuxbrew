if not set -q HOMEBREW_PREFIX
  test -d "/home/linuxbrew/.linuxbrew"
     and set -gx HOMEBREW_PREFIX /home/linuxbrew/.linuxbrew
  test -d "$HOME/.linuxbrew"
     and set -gx HOMEBREW_PREFIX "$HOME/.linuxbrew"
end
if set -q HOMEBREW_PREFIX
  set -l linuxbrew_bin_path "$HOMEBREW_PREFIX/bin"
  set -l linuxbrew_sbin_path "$HOMEBREW_PREFIX/sbin"
  set -l linuxbrew_manpath "$HOMEBREW_PREFIX/share/man"
  set -l linuxbrew_infopath "$HOMEBREW_PREFIX/share/info"

  contains -- $linuxbrew_bin_path $PATH
    or set -gx PATH $linuxbrew_bin_path $PATH

  contains -- $linuxbrew_sbin_path $PATH
    or set -gx PATH $linuxbrew_sbin_path $PATH

  contains -- $linuxbrew_manpath $MANPATH
    or set -gx MANPATH $linuxbrew_manpath $MANPATH

  contains -- $linuxbrew_infopath $INFOPATH
    or set -gx INFOPATH $linuxbrew_infopath $INFOPATH
end
