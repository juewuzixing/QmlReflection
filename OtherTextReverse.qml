import QtQuick 2.0
import QtGraphicalEffects 1.0

Rectangle {
    id: window

    width: 480
    height: 480
    color: "black"

    Text {
        id: text
        text: "890098"
        color: "red"
        font.pixelSize: 25
        font.bold: true
        anchors.centerIn: parent
    }
    Item{
        anchors.top: text.bottom
        anchors.topMargin: 5
        anchors.horizontalCenter: text.horizontalCenter
        width: text.width
        height: text.height

        Text {
            text: text.text
            color: "red"
            font.bold: true
            font.pixelSize: 25
            transform: Scale{
                yScale: -1
                origin.y: text.height / 2
            }
        }
        LinearGradient{
            width: text.width
            height: text.height
            gradient: Gradient{
                GradientStop { position: 0.0; color: Qt.rgba(0,0,0,0.1) }
                GradientStop { position: 0.4; color: Qt.rgba(0,0,0,1) }
            }
        }
    }
}
