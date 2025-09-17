import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtMultimedia 5.12


Window {
    id:root
    width: 640
    height: 480
    visible: true
    title: qsTr("Music Player")

    Image {
        id: bg
        source: "qrc:/icons/bg.jpg"
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
    }

    Rectangle
    {
        id:outerRect
        width: 400
        height: 120
        radius: 20
        color: "#ddd"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 25
        anchors.margins: 10
        anchors.horizontalCenter: parent.horizontalCenter

        Column
        {
            id: column
            spacing: 20

            Slider
            {
                id:musicSlider
                width: 400
                anchors.top: parent.top
                anchors.margins: 10
                anchors.topMargin: 10
                to: musicPlayer.duration   // total length in ms
                value: musicPlayer.position  // current playhead in ms

                onMoved: musicPlayer.seek(value)  // allow user to seek

            }

            RowLayout
            {
                width: 400
                anchors.top : musicSlider.bottom
                anchors.topMargin: 20

                anchors.left: musicSlider.anchors.left
                spacing: 20
                Layout.margins: 10

                Layout.alignment: Qt.horizontalCenter

                Image {
                    id: menu
                    source: "qrc:/icons/menu.png"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.leftMargin: 10
                    Layout.preferredWidth: 16
                    Layout.preferredHeight: 16
                }

                Image {
                    id: back
                    source: "qrc:/icons/back.png"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.preferredWidth: 16
                    Layout.preferredHeight: 16
                }

                Image {
                    id: pause
                    property bool isPlaying: false
                    source:  isPlaying
                             ?  "qrc:/icons/video-pause-button.png"
                             :  "qrc:/icons/play-button.png"

                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.preferredWidth: 16
                    Layout.preferredHeight: 16

                    Audio
                    {
                        id:musicPlayer
                        source: "qrc:/music/Roja-Roja.mp3"
                        autoPlay: false
                        loops: Audio.Infinite
                    }

                    MouseArea
                    {
                        anchors.fill: parent
                        onPressed: {
                            pause.isPlaying = !pause.isPlaying
                            if(musicPlayer.playbackState === Audio.PlayingState)
                            {
                                musicPlayer.pause()
                            }
                            else musicPlayer.play()
                        }
                        cursorShape: Qt.PointingHandCursor
                    }
                }

                Image {
                    id: next
                    source: "qrc:/icons/next.png"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.preferredWidth: 16
                    Layout.preferredHeight: 16
                }

                Image {
                    id: heart
                    source: "qrc:/icons/heart.png"
                    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                    Layout.preferredWidth: 16
                    Layout.preferredHeight: 16
                    Layout.rightMargin: 10
                }
            }
        }
    }
}
