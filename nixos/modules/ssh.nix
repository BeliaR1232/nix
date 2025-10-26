{
  programs.ssh = {
    extraConfig = "
      Host home-server
        Hostname 10.0.0.153
        Port 2290
        User beliar
    ";
  };
}
