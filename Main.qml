import QtQuick
import QtQuick.Controls

Window {
    visible: true
    width: 390
    height: 844
    title: "RolePlayingLife"

    Rectangle {
        anchors.fill: parent
        anchors.leftMargin: 0
        anchors.rightMargin: 0
        anchors.topMargin: 0
        anchors.bottomMargin: -19
        color: "black"

        ListView {
            id: tabSelectionList
            x: 0
            y: 146
            width: 390
            height: 698
            orientation: ListView.Vertical
            flickableDirection: Flickable.AutoFlickDirection
            clip: true
            spacing: 8

            model: ListModel {
                ListElement { title: "Character Statistics" }
                ListElement { title: "Skills" }
                ListElement { title: "Daily quests" }
                ListElement { title: "Monthly quests" }
                ListElement { title: "Quarterly quests" }
                ListElement { title: "Semiannual quests" }
                ListElement { title: "Annual quests" }
            }

            delegate: Rectangle {
                width: tabSelectionList.width
                height: 50
                radius: 6

                color: ListView.isCurrentItem ? "#2a2a2a" : "#1e1e1e"
                border.color: "#555"
                border.width: 1

                Text {
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 14
                    anchors.right: parent.right
                    anchors.rightMargin: 14
                    text: title
                    color: "white"
                    elide: Text.ElideRight
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: tabSelectionList.currentIndex = index
                }
            }

            Image {
                id: image1
                x: 42
                y: 410
                width: 100
                height: 100
                source: "qrc:/qtquickplugin/images/template_image.png"
                fillMode: Image.PreserveAspectFit
            }
        }

        Image {
            id: image
            x: 8
            y: 8
            width: 108
            height: 113
            source: "qrc:/icons/pudzian.png"
            fillMode: Image.PreserveAspectFit
        }

        Text {
            id: playerNameValue1
            x: 137
            y: 24
            width: 232
            height: 32
            color: "#ffffff"
            text: qsTr("default-value")
            font.pixelSize: 12
        }

        Text {
            id: playerNameLabel
            x: 138
            y: 8
            width: 222
            height: 17
            color: "#ffffff"
            text: qsTr("PlayerName")
            font.pixelSize: 12
        }

        Text {
            id: characterClassValue
            x: 137
            y: 104
            width: 232
            height: 46
            color: "#ffffff"
            text: qsTr("CharacterClassValue")
            font.pixelSize: 12
        }

        Text {
            id: characterClassLabel
            x: 138
            y: 81
            width: 222
            height: 17
            color: "#ffffff"
            text: qsTr("Character Class")
            font.pixelSize: 12
        }
    }
    }


