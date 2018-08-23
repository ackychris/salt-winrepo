{% set PROGRAM_FILES = "%ProgramFiles%" %}
{% set versions = ['1.1.3', '0.9.0', '0.8.7'] %}
gsmartcontrol:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'GSmartControl'
    installer: 'salt://installers/gsmartcontrol-1.1.3-win64.exe'
    install_flags: '/S'
    uninstaller: '{{ PROGRAM_FILES }}\GSmartControl\gsmartcontrol_uninst.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
