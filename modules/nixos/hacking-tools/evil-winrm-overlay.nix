final: prev:
{
  evil-winrm-patched = prev.evil-winrm.overrideAttrs (oldAttrs: rec {
    nativeBuildInputs = oldAttrs.nativeBuildInputs or [] ++ [ prev.makeWrapper ];

    openssl_conf = prev.writeText "openssl.conf" ''
      openssl_conf = openssl_init

      [openssl_init]
      providers = provider_sect

      [provider_sect]
      default = default_sect
      legacy = legacy_sect

      [default_sect]
      activate = 1

      [legacy_sect]
      activate = 1
    '';

    postFixup = ''
      ${oldAttrs.postFixup or ""}
      wrapProgram $out/bin/evil-winrm \
        --prefix OPENSSL_CONF : ${openssl_conf}
    '';
  });
}
