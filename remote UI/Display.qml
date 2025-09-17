import QtQuick 2.12
import QtQuick.Layouts 1.12

Item {

    id:root
    width: root.width - 40
    height: 75

    Rectangle
    {
        id:disply
        width: root.width - 40
        height: 75
        color: "#475e1c"
        radius: 10
        anchors.fill: parent

        gradient: Gradient {
            GradientStop { position: 0.0; color: "#475e1c"}
            GradientStop { position: 1; color: "#82a62f" }
        }

        Text {
            id: disp_channel
            text: qsTr("CHANNEL 00")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 6
            anchors.topMargin: 5
            font {family : pixelFont.name; pointSize : 14 ; bold: true}
        }

        Text {
            id: disp_station
            text: qsTr("NEWS STATION")
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 6
            anchors.topMargin: 30
            font {family : pixelFont.name; pointSize : 11}
        }

        RowLayout
        {
            y: 55
            width: 80
            height: 14
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.leftMargin: 6
            anchors.bottomMargin: 8
            spacing: 3

            Image {
                id: cc
                source: "qrc:/icons/cc (1).png"
                width: 14
                height: 14
            }

            Image {
                id: hdr
                source: "qrc:/icons/hdr (1).png"
                width: 14
                height: 14
            }


            Image {
                id: cast
                source: "qrc:/icons/cast (1).png"
                width: 14
                height: 14
            }
        }

        Image
        {
            id:volImg
            source: "qrc:/icons/volume (1).png"
            anchors.rightMargin: 24
            anchors.topMargin: 8
            width: 16
            height: 16
            anchors.right: parent.right
            anchors.top: disp_station.bottom
        }

        Rectangle
        {
            id:vol
            color: "transparent"
            width: 6
            height: disply.height - 20
            border.color: "black"
            border.width: 1

            anchors.right: parent.right
            anchors.rightMargin: 17
            anchors.top: parent.top
            anchors.topMargin: 10

            Rectangle
            {
                color: "#494949"
                anchors.fill: parent
                clip: true
                width: parent.width
                height: parent.height
                anchors.margins: 1
                anchors.top: parent.top
                anchors.topMargin: 15
            }
        }

    }
}
