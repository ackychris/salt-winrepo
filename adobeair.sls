adobeair:
  {% for version in ['26.0.0.127', '28.0.0.125', '29.0.0.112', '30.0.0.107'] %}
  {% set versionTrunc = version | truncate(4, True, '0') %}
  
  {{ version }}:
    full_name: 'Adobe AIR'
    installer: 'http://airdownload.adobe.com/air/win/download/{{ versionTrunc }}/AdobeAIRInstaller.exe'
    install_flags: '-silent -eulaAccepted'
    uninstaller: 'http://airdownload.adobe.com/air/win/download/{{ versionTrunc }}/AdobeAIRInstaller.exe'
    uninstall_flags: '-uninstall'
    msiexec: False
    locale: en_US
    reboot: False
  {% endfor %}

