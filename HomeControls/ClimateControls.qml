import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Page {

    padding: 10
    header: Label {
        text: qsTr("Climate Control")
        font.pixelSize: 48
        padding: 10
        color: "white"
    }
    background: null //remove color
    ColumnLayout
    {
        spacing: 10
        anchors.fill:parent

        ZoneControls
        {
            id:zone1
            zoneName: "zone 1"
            Layout.fillWidth: true
            Layout.fillHeight : true
        }

        ZoneControls
        {
            id:zone2
            zoneName: "zone 2"
            Layout.fillWidth: true
            Layout.fillHeight : true
        }
    }
}
