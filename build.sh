CXXFLAGS="-march=x86-64 -mtune=generic -O2 -pipe -fstack-protector-strong -Wall -W -D_REENTRANT -fPIC"
CXXFLAGS+=" -DQT_NO_DEBUG -DCORE_LIBRARY -DQT_WIDGETS_LIB -DQT_GUI_LIB -DQT_CORE_LIB -I."
CXXFLAGS+=" -isystem /usr/include/x86_64-linux-gnu/qt5"
CXXFLAGS+=" -isystem /usr/include/x86_64-linux-gnu/qt5/QtWidgets"
CXXFLAGS+=" -isystem /usr/include/x86_64-linux-gnu/qt5/QtGui"
CXXFLAGS+=" -isystem /usr/include/x86_64-linux-gnu/qt5/QtCore"
CXXFLAGS+=" -isystem /usr/include/x86_64-linux-gnu/qt5/QtQuick"
CXXFLAGS+=" -isystem /usr/include/x86_64-linux-gnu/qt5/QtQuickWidgets"
CXXFLAGS+=" -isystem /usr/include/x86_64-linux-gnu/qt5/QtQml"
CXXFLAGS+=" -I. -I/usr/lib/x86_64-linux-gnu/qt5/mkspecs/linux-g++"
export CXXFLAGS
cargo build --release