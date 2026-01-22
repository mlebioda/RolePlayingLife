import QtQuick
import QtQuick.Controls

Window {
    visible: true
    width: 390
    height: 844
    title: "RolePlayingLife"

    Rectangle {
        anchors.fill: parent
        color: "white"
    }

    Text {
        text: "Hello from Qt + QML 🚀"
        anchors.centerIn: parent
        color: "magenta"
        font.pixelSize: 28
    }
}
