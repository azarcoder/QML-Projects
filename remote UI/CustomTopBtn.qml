import QtQuick 2.12
import QtQuick.Controls 2.12

Rectangle {
    id: root
    width: 35
    height: 20
    property url image_path: ""

    radius: 10

    // Outer border gradient
    gradient: Gradient {
        GradientStop { position: 0.0; color: "#636363" }
        GradientStop { position: 1.0; color: "#b4b4b4" }
    }

    Rectangle {
        id: innerRect
        anchors.fill: parent
        anchors.margins: 2
        radius: root.radius - 2
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#aeaeae" }
            GradientStop { position: 1.0; color: "#646464" }
        }

        Image {
            anchors.centerIn: parent
            width: 14
            height: 14
            source: root.image_path
        }
    }
}
