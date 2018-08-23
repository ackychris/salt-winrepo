{% set versions = ['12.3.4.204', '12.3.3.203', '12.3.2.202'] %}

adobeshockwaveplayer:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Adobe Shockwave Player {{ version|truncate(4, True, "") }}'
    installer: 'salt://installers/Shockwave12.msi'
    install_flags: '/qn /norestart'
    uninstaller: 'https://fpdownload.macromedia.com/get/shockwave/default/english/win95nt/latest/sw_lic_full_installer.msi'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
  {% endfor %}
#
# Adobe only makes one single *.msi available for the 12.1 series, so this file will get updated and might then install a newer version
