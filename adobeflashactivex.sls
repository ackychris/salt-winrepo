{% set versions = ['30.0.0.134', '30.0.0.113', '29.0.0.171', '26.0.0.137'] %}
adobeflashactivex:
  {% for version in versions %}
  {% set versiontrunc = version | truncate(2, True, "") %}
  '{{ version }}':
    full_name: 'Adobe Flash Player {{ versiontrunc }} ActiveX'
    installer: 'salt://installers/install_flash_player_{{ versiontrunc }}_active_x.msi'
    install_flags: '/qn /norestart'
    uninstaller: 'salt://installers/install_flash_player_{{ versiontrunc }}_active_x.msi'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
  {% endfor %}

