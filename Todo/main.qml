import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.12

Window {
    id : root
    width: 640
    height: 480
    visible: true
    title: "To-Do List"

    Column {
        id: column
        anchors.fill: parent

        Row {
            id: row
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            padding: 5
            spacing: 10
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.bottomMargin: 440
            anchors.topMargin: 0

            TextField {
                id: textField
                width: row.width - button.width - 20
                text: qsTr("Text Field")
                horizontalAlignment: Text.AlignLeft
            }

            Button {
                id: button
                width: 100
                text: qsTr("Add New Task")
                highlighted: true
                Material.accent: Material.Orange

                onClicked:
                {
                    if(textField.text !== "")
                    {
                        taskModel.append({"taskName" : textField.text, "done":false })
                        textField.text = ""
                    }
                }
            }
        }

        ListView
        {
            id: taskList
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: row.bottom
            anchors.bottom: parent.bottom
            spacing: 5
            anchors.topMargin : 20

            model : ListModel
            {
                id:taskModel
            }

            delegate: Column {
                width: parent.width   // take full row width
                spacing: 2

                RowLayout {
                    width: parent.width
                    spacing: 10

                    CheckBox {
                        checked: done
                        onCheckedChanged: taskModel.setProperty(index, "done", checked)
                    }

                    Text {
                        text: taskName
                        color: done ? "gray" : "black"
                        font.strikeout: done
                        Layout.fillWidth: true   // 👈 expands to take free space
                        verticalAlignment: Text.AlignVCenter
//                        horizontalAlignment: Text.AlignHCenter
                    }

                    Button {
                        id: myRoundButton
                        text: "Remove"
                        onClicked: taskModel.remove(index)

                        background: Rectangle {
                            radius: 6
                            color: "blue"
                        }

                        contentItem: Text {
                            text: myRoundButton.text
                            color: "white"   // button text white
                            font: myRoundButton.font
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            anchors.fill: parent
                        }
                    }
                }

                // horizontal separator line
                Rectangle {
                    width: parent.width
                    height: 1
                    color: "#cccccc"
                }
            }


        }
    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.5}D{i:2}D{i:1}
}
##^##*/
