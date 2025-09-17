import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12
import MyApp 1.0

Window {
    visible: true
    width: 600
    height: 400
    title: "Arduino Dashboard"
    color : "#111111"


    ArduinoHandler {
        id: arduino
    }

    FontLoader
    {
        id:myFont
        source: "qrc:/Roboto_Mono/static/RobotoMono-Medium.ttf"

    }


    Rectangle {
        anchors.centerIn: parent
        width: 200
        height: 200
        color: "#222222"
        radius: 10   // rounded corners

        Column {
            id: column
            anchors.fill: parent
            anchors.margins: 20
            spacing: 25

            Row {
                spacing: 30

                Button {
                    text: "Connect Arduino"
                    onClicked: arduino.connectArduino("COM7")
                    background: Rectangle
                    {
                        id:btn
                        anchors.fill : parent
                        radius : 25
                    }
                }

                Rectangle {
                    color: arduino.connected ? "green" : "red"
                    width: 16
                    height: 16
                    anchors.verticalCenter: parent.verticalCenter
                    radius: width/2
                }
            }

            Row {
                spacing: 10

                Image {
                    id: temp
                    source: "qrc:/icons/thermometer.png"
                    width: 18
                    height: 18
                }
                Label {
                    text: "Temperature: " + arduino.temperature + "°C"
                    font {family : myFont.name; pointSize: 12 }
                    color: "#fff"
                }
            }

            Row {
                spacing: 10

                Image {
                    id: humidity
                    source: "qrc:/icons/humidity.png"
                    width: 18
                    height: 18
                }
                Label {
                    text: "Humidity: " + arduino.humidity + "%"
                    font {family : myFont.name; pointSize: 12 }
                    color: "#fff"
                }
            }
            Row {
                spacing: 10

                Image {
                    id: pressure
                    source: "qrc:/icons/gauge.png"
                    width: 18
                    height: 18
                }
                Label {
                    text: "Pressure: " + arduino.pressure + "hPa"
                    font {family : myFont.name; pointSize: 12 }
                    color: "#fff"
                }
            }
        }
    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.9}
}
##^##*/
