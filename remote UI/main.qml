import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Window {
    id:root
    width: 200
    height: 440
    visible: true
    color: "black"
    title: qsTr("Remote")

    FontLoader
    {
        id:pixelFont
        source: "qrc:/Pixelify_Sans,Roboto_Mono/Pixelify_Sans/static/PixelifySans-Regular.ttf"
    }

    Rectangle
    {
        id:remotemain
        border.width: 3
        border.color: "#fff"
        anchors.fill: parent
        radius: 25
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#636363"}
            GradientStop { position: 1; color: "#b4b4b4" }
        }

        Rectangle
        {
            id:pwrbtn
            width: 25
            height: 25
            color: "darkred"
            radius: width/2
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.margins: 20
            anchors.rightMargin: 14
            anchors.topMargin: 12

            gradient: Gradient {
                GradientStop { position: 0.0; color: "#a41e1f"}
                GradientStop { position: 1; color: "#ddd" }
            }

            Rectangle
            {
                id:innerRect
                anchors.fill: parent
                anchors.margins: 2
                gradient: Gradient {
                    GradientStop { position: 0.0; color: "#c49598"}
                    GradientStop { position: 1; color: "#b50008" }
                }
                radius: parent.radius
            }



            Image
            {
                id:powerImg
                anchors.centerIn: parent
                source: "qrc:/icons/power.png"
                width: 12
                height: 12
            }
        }

        //display
        Display
        {
            id:display
            width: root.width - 40
            height: 75
            anchors.top: pwrbtn.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 15
        }

        RowLayout
        {
            width: parent.width
            anchors.left: display.left
            anchors.top: display.bottom
            anchors.horizontalCenterOffset: 0
            anchors.leftMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 6
            spacing: 10

            CustomTopBtn {
                id:ccbtn
                width: 30
                height: 25
                image_path: "qrc:/icons/cc (2).png"
            }
            CustomTopBtn {
                id:hdrbtn
                width: 30
                height: 25
                image_path: "qrc:/icons/hdr (2).png"
            }
            CustomTopBtn {
                id:castbtn
                width: 30
                height: 25
                image_path: "qrc:/icons/cast (2).png"
            }
            CustomTopBtn {
                id:novalbtn
                width: 30
                height: 25
                image_path: "qrc:/icons/volume.png"
            }
        }

        RoundBtn
        {
            id:roundnavbtn
            width: 120
            height: 120
            anchors.top: parent.top
            anchors.topMargin: 180
            anchors.horizontalCenter: parent.horizontalCenter
        }

        RowLayout
        {
            id: rowLayout
            spacing: 6
            width: root.width
            anchors.top: roundnavbtn.bottom
            anchors.leftMargin: 15
            anchors.topMargin: 10
            anchors.left: display.left
            Layout.alignment: Qt.AlignHCenter

            LongBtn
            {
                width: 30
                height: 100
                topImg: "qrc:/icons/plus.png"
                bottomImg: "qrc:/icons/minus-sign.png"
            }

            LongBtn
            {
                width: 30
                height: 100
                topImg: "qrc:/icons/volume-up.png"
                bottomImg: "qrc:/icons/low-volume.png"
            }

        }
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.66}
}
##^##*/
