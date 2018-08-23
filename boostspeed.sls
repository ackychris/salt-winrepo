{% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}
{% set versions = ['10.0.12.0'] %}
boostspeed:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Auslogics BoostSpeed 10'
    uninstaller: '{{ PROGRAM_FILES }}\Auslogics\BoostSpeed\unins000.exe'
    uninstall_flags: '/silent'
    msiexec: False
    reboot: False
  {% endfor %}
