import QtQuick 2.12
import QtQuick.Controls 2.12

ApplicationWindow {
    id:window
    width: 1280
    height: 760
    visible: true
    title: qsTr("Home Controls")
    font.pixelSize: 24

    background: Image {
        fillMode: Image.PreserveAspectCrop
        source: Qt.resolvedUrl("assets/BrushedMetal.jpg") //when use resolve url do not give :\
    }

    ClimateControls
    {
        anchors.fill : parent
    }
}
