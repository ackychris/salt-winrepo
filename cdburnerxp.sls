# both 32-bit (x86) AND a 64-bit (AMD64) installer available
{% if grains['cpuarch'] == 'xAMD64' %}
    {% set PROGRAM_FILES = "%ProgramFiles%" %}
    {% set FULLNAME = "CDBurnerXP (64 bit)" %}
{% else %}
    {% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}
    {% set FULLNAME = "CDBurnerXP" %}
{% endif %}
{% set versions = ['4.5.8.6795', '4.5.6.5931'] %}
cdburnerxp:
  {% for version in versions %}
  '{{ version }}':
    full_name: '{{ FULLNAME }}'
    installer: 'https://cdburnerxp.se/downloadsetup.exe'
    install_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    uninstaller: '{{ PROGRAM_FILES }}\CDBurnerXP\unins000.exe'
    uninstall_flags: '/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
