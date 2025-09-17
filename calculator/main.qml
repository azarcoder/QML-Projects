import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3
import QtQuick.Controls.Material 2.12

Window {
    id: window
    width: 300
    height: 400
    visible: true
    title: qsTr("Simple Calculator")
    color: "#151922"




    function btnClicked(btnText)
    {
        if(btnText === "C")
        {
            textField.text = ""
        }
        else if(btnText === "=")
        {
            try
            {
                textField.text = eval(textField.text)
            }
            catch(e)
            {
                console.log(e)
            }
        }
        else textField.text+=btnText
    }

    Rectangle
    {
        id:box
        width: gridLayout.width+8
        height: gridLayout.height+8
        color: "#ddd"
        radius: 12
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        focus: true

        Keys.onPressed: {
            // digits
            if(event.key >= Qt.Key_0 && event.key <= Qt.Key_9) {
                btnClicked(String.fromCharCode(event.key))
            }
            // operators
            else if(event.key === Qt.Key_Plus) btnClicked("+")
            else if(event.key === Qt.Key_Minus) btnClicked("-")
            else if(event.key === Qt.Key_Slash) btnClicked("/")
            else if(event.key === Qt.Key_Percent) btnClicked("%")
            else if(event.key === Qt.Key_Period) btnClicked(".")
            // equals / enter
            else if(event.key === Qt.Key_Enter || event.key === Qt.Key_Return || event.key === Qt.Key_Equal)
                btnClicked("=")
            // clear
            else if(event.key === Qt.Key_Backspace || event.key === Qt.Key_C)
                btnClicked("C")
        }


        GridLayout {
            id: gridLayout
            columns: 4

            TextField {
                id: textField
                Layout.topMargin: 12
                Layout.leftMargin: 12
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.columnSpan: 3
                placeholderText: "0"
            }

            RoundButton {
                id: btnclr
                text: "C"
                Layout.topMargin: 12
                Material.background: Material.Red
                Material.foreground: "white"
                onClicked: btnClicked(text)
            }

            RoundButton {
                id: btn7
                text: "7"
                Material.background: Material.Teal
                Material.foreground: "white"
                onClicked: btnClicked(text)
            }

            RoundButton {
                id: btn8
                text: "8"
                Material.background: Material.Teal
                Material.foreground: "white"
                onClicked: btnClicked(text)
            }

            RoundButton {
                id: btn9
                text: "9"
                Material.background: Material.Teal
                Material.foreground: "white"
                onClicked: btnClicked(text)
            }

            RoundButton {
                id: btnadd
                text: "+"
                Material.background: Material.Indigo
                Material.foreground: "white"
                onClicked: btnClicked(text)
            }

            RoundButton {
                id: btn4
                text: "4"
                Material.background: Material.Teal
                Material.foreground: "white"
                onClicked: btnClicked(text)
            }

            RoundButton {
                id: btn5
                text: "5"
                Material.background: Material.Teal
                Material.foreground: "white"
                onClicked: btnClicked(text)
            }

            RoundButton {
                id: btn6
                text: "6"
                Material.background: Material.Teal
                Material.foreground: "white"
                onClicked: btnClicked(text)
            }

            RoundButton {
                id: btnsub
                text: "-"
                Material.background: Material.Indigo
                Material.foreground: "white"
                onClicked: btnClicked(text)
            }

            RoundButton {
                id: btn1
                text: "1"
                Material.background: Material.Teal
                Material.foreground: "white"
                onClicked: btnClicked(text)
            }

            RoundButton {
                id: btn2
                text: "2"
                Material.background: Material.Teal
                Material.foreground: "white"
                onClicked: btnClicked(text)
            }

            RoundButton {
                id: btn3
                text: "3"
                Material.background: Material.Teal
                Material.foreground: "white"
                onClicked: btnClicked(text)
            }

            RoundButton {
                id: btndiv
                text: "/"
                Material.background: Material.Indigo
                Material.foreground: "white"
                onClicked: btnClicked(text)
            }

            RoundButton {
                id: btn0
                text: "0"
                Material.background: Material.Teal
                Material.foreground: "white"
                onClicked: btnClicked(text)
            }

            RoundButton {
                id: btndot
                text: "."
                Material.background: Material.Teal
                Material.foreground: "white"
                onClicked: btnClicked(text)
            }

            Button {
                id: button
                text: qsTr("=")
                Layout.columnSpan: 2
                Layout.fillHeight: true
                Layout.fillWidth: true
                Material.background: Material.DeepOrange
                Material.foreground: "white"
                onClicked: btnClicked(text)
            }
        }
    }
}

/*##^##
    Designer {
        D{i:0;formeditorZoom:0.66}D{i:1}
    }
    ##^##*/
