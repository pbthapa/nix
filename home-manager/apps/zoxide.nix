{ ... }: {
  programs.zoxide = {
    enable = true;
    options = [ "--cmd cd" ]; # replace cd with z and zi with cdi
  };
}
