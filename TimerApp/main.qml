import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    id:root
    width: 640
    height: 480
    visible: true
    title: qsTr("Timer")

    property int value: 0

    Timer
    {
        id:timer
        repeat : true
        interval : 1000
        running : false

        onTriggered : root.value = root.value+1
    }

    Column {
        id: column
        anchors.fill: parent
        anchors.topMargin: 0
        spacing: 10

        Label {
            id: label
            text: {
                let mins = Math.floor(root.value / 60)
                let secs  = root.value % 60
                // pad with leading zeros
                let mm = (mins < 10 ? "0" : "") + mins
                let ss = (secs < 10 ? "0" : "") + secs
                mm + ":" + ss
            }

            anchors.top: parent.top
            anchors.topMargin: 150
            font.pointSize: 32
            font.bold: true
            anchors.horizontalCenter: parent.horizontalCenter
        }

        Row {
            id: row
            height: 400
            anchors.verticalCenter: parent.verticalCenter
            anchors.top: parent.top
            anchors.topMargin: 40
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: 25

            Button {
                id: startbtn
                text: qsTr("Start")
                onClicked: timer.start()
            }

            Button {
                id: stopbtn
                text: qsTr("Stop")
                onClicked: {
                    timer.stop()
                    root.value =  0
                }
            }
        }
    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}D{i:1}
}
##^##*/
