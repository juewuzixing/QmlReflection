import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle {
    id: window
    width: 480
    height: 480
    color: "black"

    Image {
        id: image
        source: "qrc:/flower-bamboo.png"
        anchors.centerIn: parent
    }

    ShaderEffect {
        anchors.top: image.bottom
        width: image.width
        height: image.height
        anchors.left: image.left

        property variant source: image
        property size sourceSize: Qt.size(0.5 / image.width, 0.5 / image.height)

        fragmentShader: "
            varying highp vec2 qt_TexCoord0;
            uniform lowp sampler2D source;
            uniform lowp vec2 sourceSize;
            uniform lowp float qt_Opacity;
            void main() {

                lowp vec2 tc = qt_TexCoord0 * vec2(1, -1) + vec2(0, 1);
                lowp vec4 col = 0.25 * (texture2D(source, tc + sourceSize)
                                        + texture2D(source, tc- sourceSize)
                                        + texture2D(source, tc + sourceSize * vec2(1, -1))
                                        + texture2D(source, tc + sourceSize * vec2(-1, 1))
                                       );
                gl_FragColor = col * qt_Opacity * (1.0 - qt_TexCoord0.y) * 0.2;
            }"
    }
}
