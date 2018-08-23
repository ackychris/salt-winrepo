{% set versions = ['4.3.1', '4.3.0', '4.2.7', '4.2.5', '4.2.4', '4.1.0'] %}

classicshell:
  {% for version in versions %}
  {% set verunderscore = version | replace(".", "_")%}
  '{{ version }}':
    full_name: 'Classic Shell'
    installer: 'salt://installers/ClassicShellSetup_{{ verunderscore }}.exe'
    install_flags: '/passive'
    uninstaller: 'msiexec.exe'
    {% if grains['cpuarch'] == 'AMD64' %}
    uninstall_flags: '/qn /x {E289B7DD-6732-4333-A47A-75A145D23EE3} /norestart'
    {% else %}
    uninstall_flags: '/qn /x {B9EFC38D-E52A-4BBE-8421-58FCFFDE19E2} /norestart'
    {% endif %}
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}
