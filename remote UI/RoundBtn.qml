import QtQuick 2.0

Item{
    id: roundBut
    width: 120
    height: 120


    // Outer Circle
    Rectangle {
        id: outerCircle
        radius: width/2
        anchors.centerIn: parent
        width: 120
        height: 120
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        gradient: Gradient {
            GradientStop { position: 0.0; color: "#666" }
            GradientStop { position: 1.0; color: "#aaa" }
        }

        // Cross lines (using rectangles)
        Rectangle { width: 2; height: parent.height; anchors.centerIn: parent; color: "#909090" ;rotation: 45 }
        Rectangle { id: rectangle; width: parent.width; height: 2; anchors.centerIn: parent; color: "#909090" ;rotation: 45 }

        // Inner Circle (mic button)
        Rectangle {
            id: innerCircle
            width: 55
            height: 55
            radius: width/2
            anchors.centerIn: parent
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#bbb" }
                GradientStop { position: 1.0; color: "#666" }
            }

            Image {
                source: "qrc:/icons/mic.png"
                anchors.centerIn: parent
                width: 30
                height: 30
            }

            MouseArea {
                anchors.fill: parent
                onClicked: console.log("Mic pressed")
            }
        }
    }


    // Top button
    Image {
        source: "qrc:/icons/setting.png"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 10
        width: 16
        height: 16

        MouseArea {
            anchors.fill: parent
            onClicked: console.log("Settings clicked")
        }
    }

    // Bottom button
    Image {
        source: "qrc:/icons/play-pause.png"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        width: 16
        height: 16

        MouseArea {
            anchors.fill: parent
            onClicked: console.log("Play clicked")
        }
    }

    // Left button
    Image {
        source: "qrc:/icons/left-arrow.png"
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 10
        width: 16
        height: 16

        MouseArea {
            anchors.fill: parent
            onClicked: console.log("Prev clicked")
        }
    }

    // Right button
    Image {
        source: "qrc:/icons/right-arrow (1).png"
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: parent.right
        anchors.rightMargin: 10
        width: 14
        height: 14

        MouseArea {
            anchors.fill: parent
            onClicked: console.log("Next clicked")
        }
    }

}
