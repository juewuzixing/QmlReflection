import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle {
    width: 480
    height: 480
    color: "black"
    Image {
        id: image
        source: "qrc:/flower-bamboo.png"
        anchors.centerIn: parent
    }
    Item {
        anchors {
            top: image.bottom
            left: image.left
        }
        opacity: 0.5
        width: image.width
        height: image.height
        layer.enabled: true
        layer.effect: Component {
            ShaderEffectSource {
                sourceItem: image
            }
        }
        transform: Rotation {
            origin.x: image.width / 2
            origin.y: image.height / 2
            axis { x: 1; y: 0; z: 0 }
            angle: 180
        }
    }
}
