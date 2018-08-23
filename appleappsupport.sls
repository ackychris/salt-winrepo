# both 32-bit (x86) AND a 64-bit (AMD64) installer available
appleappsupport:
  {% for version in ['6.6'] %}
  '{{ version }}':
    full_name: 'Apple Application Support (64-bit)'
    installer: 'salt://installers/iTunes64Setup/AppleApplicationSupport64.msi'
    uninstall_flags: 
                     '/qn /norestart'
    # the above uninstalls:
    # Bonjour64 v. 3.1.0.1  {56DDDFB8-7F79-4480-89D5-25E1F52AB28F}
    # Apple Software Update v. 2.5.0.1 {19589375-5C58-4AFA-842F-8B34744CCEAD}
    # Apple Mobile Device Support (64-bit) v. 11.0.5.14 {AA7D90D2-2387-4FA5-A3AF-96811BE49BFD}
    # Apple Application Support (32-bit)  v. 6.3 {D4C80B0C-CF67-43A7-90C3-466853543B54}
    # Apple Application Support (64-bit) v. 6.3 {B2A2E8AF-BC48-4191-B2C4-3846A19835CA}
    # iTunes v. 12.7.3.46 {1D7D1271-5258-4F5A-B8C1-7176BF398782}
    install_flags: '/quiet /qn /norestart'
    uninstaller: 'salt://installers/iTunes64Setup/AppleApplicationSupport64.msi'
    msiexec: True
    locale: en_US
    reboot: False
  {% endfor %}
