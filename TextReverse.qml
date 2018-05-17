import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle {
    id: name
    width: 480
    height: 480
    color: "black"
    Text {
        id: src
        text: "890098"
        color: "red"
        font.pixelSize: 25
        font.bold: true
        anchors.centerIn: parent
    }

    Item {
        anchors {
            top: src.bottom
            left: src.left
        }
        opacity: 0.5
        width: src.width
        height: src.height
        layer.enabled: true
        layer.effect: Component {
            ShaderEffectSource {
                sourceItem: src
            }
        }
        transform: Rotation {
            origin.x: src.width / 2
            origin.y: src.height / 2
            axis {x: 1; y: 0; z: 0}
            angle: 180
        }
    }
}
