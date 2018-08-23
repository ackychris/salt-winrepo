{% set versions = ['30.0.0.113', '29.0.0.171', '30.0.0.134'] %}

adobeflashnpapi:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Adobe Flash Player {{ version|truncate(2, True, "") }} NPAPI'
    installer: 'salt://installers/install_flash_player_30_plugin.msi'
    install_flags: '/qn /norestart'
    uninstaller: 'salt://installers/install_flash_player_30_plugin.msi'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
  {% endfor %}

