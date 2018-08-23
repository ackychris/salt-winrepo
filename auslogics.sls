{% set PROGRAM_FILES = "%ProgramFiles(x86)%" %}
{% set versions = ['8.0.12.0', '7.1.0.0', '7.0.0.0'] %}
auslogics:
  {% for version in versions %}
  '{{ version }}':
    full_name: 'Auslogics Disk Defrag'
    installer: http://downloads.auslogics.com/en/disk-defrag/disk-defrag-setup.exe
    install_flags: /s
    uninstaller: '{{ PROGRAM_FILES }}\auslogics\disk defrag\unins000.exe' 
    uninstall_flags: /silent
    msiexec: false
    reboot: false
  {% endfor %}

