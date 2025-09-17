import QtQuick 2.0

Rectangle
{
    id:root
    width: 30
    height: 90
    radius: width/2

    property url topImg
    property url bottomImg

    gradient: Gradient {
        GradientStop { position: 0.0; color: "#666" }
        GradientStop { position: 1.0; color: "#aaa" }
    }

    Rectangle {
        id: innerRect2
        anchors.fill: parent
        anchors.margins: 2
        radius: parent.radius

        gradient: Gradient {
            GradientStop { position: 0.0; color: "#aeaeae" }
            GradientStop { position: 1.0; color: "#646464" }
        }

        Image {
            width: 14
            height: 14
            source: root.topImg
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Image {
            width: 14
            height: 14
            source: root.bottomImg
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
