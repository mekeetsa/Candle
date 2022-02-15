TEMPLATE = subdirs
 
SUBDIRS =   src/designerplugins \
            src/candle \
            src/candleplugins \
            src/scriptbindings
            
# Make plugins translations
system(qmake src/candleplugins/candleplugins.pro)

install_main.path = bin
install_main.files += src/candle/Candle

install_plugins.path = bin/plugins
install_plugins.files = src/candleplugins/camera src/candleplugins/emergencybutton src/candleplugins/usercommands src/candleplugins/coordinatesystem

install_translations.path = bin/translations
install_translations.files = src/candle/translations/*

install_license.path = bin
install_license.files = LICENSE

install_scriptbindings.path = bin/script
install_scriptbindings.files = src/scriptbindings/plugins/script/*.so

INSTALLS += install_main install_plugins install_translations install_license install_scriptbindings
