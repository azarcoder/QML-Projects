import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Pane {
    id:root
    property string zoneName
    property int celcius : temperature.value
    property int fahrenheit : (celcius * 1.8) + 32
    readonly property color temperatureColor: {
        if(celcius < 10)
            return "lightblue"
        else if(celcius >= 10 && celcius < 20)
            return "cyan"
        else if(celcius >= 20 && celcius < 30)
            return "orange"
        else if(celcius >= 30 && celcius <= 40)
            return "red"
        return "white"
    }

    background: Rectangle
    {
        color:"black"
        opacity : 0.5
    }

    palette
    {
//        windowText : "white"
//        dark : "white"
        windowText : root.temperatureColor
        dark : root.temperatureColor
    }


    RowLayout
    {
        anchors.fill:parent
        spacing: 10

        ColumnLayout
        {
            spacing : 10
            RowLayout
            {
                spacing : 10

                CheckBox
                {
                    id:zoneEnabledCheckbox
                    checked: true
                    text: qsTr("Enable %1").arg(root.zoneName)
                }
                Switch
                {
                    id:unitsSwitch
                    text: qsTr("°C / °F")
                }
            }
            RowLayout
            {
                spacing : 10
                enabled: zoneEnabledCheckbox.checked

                Image
                {
                    id:coolImg
                    source: Qt.resolvedUrl("assets/cool.svg")
                    Layout.alignment: Qt.AlignBottom
                }

                Dial
                {
                    id: temperature
                    from : 0  // c
                    to  : 40 //c
                    value : 21 //default val
                    stepSize: 1
                    snapMode: Dial.SnapAlways
//                    onValueChanged: console.log("dial value : ", value)
                }

                Image
                {
                    id:heatImg
                    source: Qt.resolvedUrl("assets/heat.svg")
                    Layout.alignment: Qt.AlignBottom
                }

            }
        }

        ColumnLayout
        {
            id:rightColumn
            enabled: zoneEnabledCheckbox.checked
            spacing : 10
            Label
            {
                text: unitsSwitch.checked ? root.fahrenheit + "°F" : root.celcius + "°C"
                font {
                    weight: Font.ExtraLight
                    pixelSize: 200
                }
                Layout.fillWidth: true
                horizontalAlignment: Qt.AlignRight
                renderType: Text.NativeRendering //for better precision
            }

            RowLayout
            {
                spacing: 10

                Image {
                    id: lowfanspeed
                    source: fanspeedSlider.value > 0 ? Qt.resolvedUrl("assets/fan_outline.svg") : Qt.resolvedUrl("assets/fan_off.svg")
                    scale: 0.75 //slightly smaller
                }

                Slider
                {
                    id:fanspeedSlider
                    from : 0
                    to : 100

                    Layout.fillWidth: true
                }
                Image {
                    id: highfanspeed
                    source: Qt.resolvedUrl("assets/fan_fill.svg")
                    scale: 1.25//slightly big
                }
            }
        }
    }
}
