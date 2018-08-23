{% set PROGRAM_FILES = "%ProgramFiles%" %}
{% set versions = ['5.44', '5.43', '5.42', '5.41', '5.40', '5.39', '4.0.6', '4.0.2'] %}

ccleaner:
  {% for version in versions %}
  '{{ version }}':
  {% set dl_version = version | replace(".","") %}
  
    full_name: 'CCleaner'
    installer: 'https://download.ccleaner.com/ccsetup{{ dl_version }}.exe'
    install_flags: '/S'
    uninstaller: '{{ PROGRAM_FILES }}\CCleaner\uninst.exe'
    uninstall_flags: '/S'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
