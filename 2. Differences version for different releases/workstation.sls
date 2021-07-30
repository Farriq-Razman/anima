install-mozila:
  cmd.run:
      {% if grains['osrelease'] == '18.04' %}
	-name: |
            cd /temp
            wget https://ftp.mozilla.org/pub/firefox/releases/89.0/linux-x86_64/en-US/firefox-89.0.tar.bz2
            tar xzf firefox-89.0.tar.bz2
            cd firefox-89.0
            mkdir /opt/firefox
            ./configure --prefix=/opt/firefox
            make
            make install
	{% elif grains['osrelease'] == '16.04' %}
	-name: |
            cd /temp
            wget https://ftp.mozilla.org/pub/firefox/releases/89.0/linux-x86_64/en-US/firefox-85.0.tar.bz2
            tar xzf firefox-85.0.tar.bz2
            cd firefox-85.0
            mkdir /opt/firefox
            ./configure --prefix=/opt/firefox
            make
            make install
	{% endif %}