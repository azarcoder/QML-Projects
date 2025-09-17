QT += quick serialport

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        arduinohandler.cpp \
        main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

HEADERS += \
    arduinohandler.h

DISTFILES += \
    Roboto_Mono/OFL.txt \
    Roboto_Mono/README.txt \
    Roboto_Mono/RobotoMono-Italic-VariableFont_wght.ttf \
    Roboto_Mono/RobotoMono-VariableFont_wght.ttf \
    Roboto_Mono/static/RobotoMono-Bold.ttf \
    Roboto_Mono/static/RobotoMono-BoldItalic.ttf \
    Roboto_Mono/static/RobotoMono-ExtraLight.ttf \
    Roboto_Mono/static/RobotoMono-ExtraLightItalic.ttf \
    Roboto_Mono/static/RobotoMono-Italic.ttf \
    Roboto_Mono/static/RobotoMono-Light.ttf \
    Roboto_Mono/static/RobotoMono-LightItalic.ttf \
    Roboto_Mono/static/RobotoMono-Medium.ttf \
    Roboto_Mono/static/RobotoMono-MediumItalic.ttf \
    Roboto_Mono/static/RobotoMono-Regular.ttf \
    Roboto_Mono/static/RobotoMono-SemiBold.ttf \
    Roboto_Mono/static/RobotoMono-SemiBoldItalic.ttf \
    Roboto_Mono/static/RobotoMono-Thin.ttf \
    Roboto_Mono/static/RobotoMono-ThinItalic.ttf
