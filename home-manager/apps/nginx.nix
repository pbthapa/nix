{ ... }: {
  programs.nginx = {
    enable = false;
    virtualHosts."blog.example.com" = {
      enableACME = true;
      forceSSL = true;
      root = "/var/www/blog";
    };

    security.acme.certs = {
      "blog.example.com".email = "youremail@address.com";
    };
  };
}
