import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Page {
    background: Rectangle
    {
        color:"red"
    }
    header : Rectangle
    {
        color: "lightblue"
        height:30
        Text {
            text: qsTr("HEADER")
            anchors.centerIn: parent
            font.bold:true

        }

    }

    RowLayout
    {
        spacing: 20
        anchors.fill: parent
        Pane
        {
            padding : 10
            background: Rectangle { color: "green" }
            //            Layout.minimumWidth: parent.width / 2
            Layout.preferredWidth: 1 //it is like span in css
            Layout.fillWidth: true //it must if i use preferredWidth
            Layout.fillHeight: true

            ColumnLayout
            {
                spacing: 10
                anchors.fill: parent

                Rectangle {
                    width: 200
                    height: 100
                    color: "yellow"
                    Layout.alignment: Qt.AlignHCenter
                }
                Rectangle {
                    width: 200
                    height: 100
                    color: "yellow"
                    Layout.alignment: Qt.AlignHCenter
                }
                Rectangle {
                    width: 200
                    height: 100
                    color: "yellow"
                    Layout.alignment: Qt.AlignHCenter
                }
            }

        }
        Pane
        {
            padding : 10
            //            Layout.minimumWidth: parent.width / 2
            Layout.preferredWidth: 1
            Layout.fillWidth: true
            Layout.fillHeight: true
            background: Rectangle { color: "blue" }

            ScrollView
            {
                id:scroll
                anchors.fill: parent
                //                ScrollBar.horizontal.policy: ScrollBar.AlwaysOn
                //                ScrollBar.vertical.policy: ScrollBar.AlwaysOn

                ColumnLayout
                {
                    spacing: 10
                    width: scroll.width
                    Rectangle
                    {
                        color:"orange"
                        width: 200
                        height: 300
                        Layout.alignment: Qt.AlignHCenter
                    }
                    Rectangle
                    {
                        color:"orange"
                        width: 200
                        height: 100
                        Layout.alignment: Qt.AlignHCenter
                    }

                    Rectangle
                    {
                        color:"gold"
                        width: 200
                        height: 100
                        Layout.alignment: Qt.AlignHCenter
                    }
                }
            }
        }
    }

    footer : Rectangle
    {
        color: "tomato"
        height:30
        Text {
            text: qsTr("FOOTER")
            anchors.centerIn: parent
            font.bold:true

        }

    }
}
