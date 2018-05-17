import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle {
    id: name
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

    Item {
        anchors {
            top: text.bottom
            left: text.left
        }
        opacity: 0.5
        width: text.width
        height: text.height
        layer.enabled: true
        layer.effect: Component {
            ShaderEffectSource {
                sourceItem: text
            }
        }
        transform: Rotation {
            origin.x: text.width / 2
            origin.y: text.height / 2
            axis { x: 1; y: 0; z: 0 }
            angle: 180
        }
    }
}
