libreoffice:
  {% for version in ['5.2.4.2', '5.2.7.2', '5.3.5.2', '5.3.6.1', '6.0.4.2', '6.0.5.2', '6.0.6.2'] %}
  '{{ version }}':
    full_name: 'LibreOffice {{ version }}'
    {% if grains['cpuarch'] == 'AMD64' %}
    installer: 'salt://installers/LibreOffice_{{ version }}_Win_x64.msi'
    uninstaller: 'salt://installers/LibreOffice_{{ version }}_Win_x64.msi'
    {% else %}
    installer: 'salt://installers/LibreOffice_{{ version }}_Win_x86.msi'
    uninstaller: 'salt://installers/LibreOffice_{{ version }}_Win_x86.msi'
    {% endif %}
    install_flags: '/qn /norestart'
    uninstall_flags: '/qn /norestart'
    msiexec: True
    locale: en_US
    reboot: False
  {% endfor %}
