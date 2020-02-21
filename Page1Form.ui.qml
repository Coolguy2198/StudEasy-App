import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Dialogs 1.0

Page {
    Item {
        id: mainWindow
        width: 375
        height: 670
        Image {
            id: bg
            x: 0
            y: 0
            width: 960
            height: 667
            clip: false
            source: "bg.png"
        }
        RoundButton {
            id: button
            radius: 5
            text: "Notes"
            x: 139
            y: 427
            width: 98
            height: 40
            onClicked: {
                mainWindow.visible = false
                noteWindow.visible = true
                button4.visible = true
            }
        }
        Image {
            id: image
            x: 89
            y: 159
            width: 197
            height: 198
            source: "Utilities-notes-icon.png"
        }
    }
    Item {
        visible: false
        id: noteWindow
        Image {
            x: -500
            y: 0
            width: 960
            height: 670
            source: "bg.png"
        }
        RoundButton {
            id: button1
            radius: 5
            text: "Cornell"
            x: 139
            y: 296
            width: 98
            height: 40
            onClicked: {
                noteWindow.visible = false
                textarea1.visible = true
                textarea2.visible = true
                textarea3.visible = true
                backCornell.visible = true
                openCornell.visible = true
                saveCornell.visible = true
                border.visible = true
                button4.visible = false
            }
        }
        RoundButton {
            id: button2
            radius: 5
            text: "Outline"
            x: 139
            y: 80
            width: 98
            height: 40
            onClicked: {
                noteWindow.visible = false
                textarea.visible = true
                save.visible = true
                back.visible = true
                open.visible = true
                border.visible = true
            }
        }
        RoundButton {
            id: button4
            radius: 5
            text: "Back"
            visible: false
            x: 139
            y: 503
            width: 98
            height: 40
            onClicked: {
                mainWindow.visible = true
                noteWindow.visible = false
                border.visible = false
                save.visible = false
                open.visible = false
            }
        }
        Text {
            id: element
            x: 8
            y: 8
            width: 214
            height: 66
            color: "#ffffff"
            text: qsTr("Choose Method:")
            font.family: "Verdana"
            fontSizeMode: Text.HorizontalFit
            font.pixelSize: 20
        }
    }
    Item {
        anchors.fill: parent
        FileDialog {
            id: saveFileDialogCornell
            selectFolder: true
            onAccepted: {
                saveFileCornell1(saveFileDialogCornell.folder + "/",
                                 textarea1.text)
                saveFileCornell2(saveFileDialogCornell.folder + "/",
                                 textarea2.text)
                saveFileCornell3(saveFileDialogCornell.folder + "/",
                                 textarea3.text)
                saveFileCornell4(saveFileDialogCornell.folder + "/")
            }
        }
        FileDialog {
            id: openFileDialogCornell
            selectExisting: false
            selectFolder: true
            onAccepted: {
                textarea1.text = openFileCornell1(
                            openFileDialogCornell.folder + "/")
                textarea2.text = openFileCornell2(
                            openFileDialogCornell.folder + "/")
                textarea3.text = openFileCornell3(
                            openFileDialogCornell.folder + "/")
            }
        }
        FileDialog {
            id: openFileDialog
            nameFilters: ["Text files (*.txt)", "All files (*)"]
            onAccepted: textarea.text = openFile(openFileDialog.fileUrl)
        }
        FileDialog {
            id: saveFileDialog
            selectExisting: false
            nameFilters: ["Text files (*.txt)", "All files (*)"]
            onAccepted: saveFile(saveFileDialog.fileUrl, textarea.text)
        }
        BorderImage {
            id: border
            source: "bg.png"
            width: 960
            height: 675
            border.left: 5
            border.top: 5
            border.right: 5
            border.bottom: 5
            visible: false
        }
        TextArea {
            id: textarea
            x: 10
            y: 10
            width: 355
            height: 645
            wrapMode: TextEdit.NoWrap
            visible: false
            background: Rectangle {
                implicitWidth: 80
                implicitHeight: 500
                border.color: "#ffffff"
            }
        }
        RoundButton {
            id: open
            radius: 5
            visible: false
            text: "Open"
            x: 375 - 98
            y: 0
            width: 98
            height: 40
            onClicked: {
                openFileDialog.open()
            }
        }
        RoundButton {
            id: save
            radius: 5
            visible: false
            text: "Save"
            x: 375 - 98
            y: 630
            width: 98
            height: 40
            onClicked: {
                saveFileDialog.open()
            }
        }
        RoundButton {
            id: back
            radius: 5
            visible: false
            text: "Back"
            x: 0
            y: 630
            width: 98
            height: 40
            onClicked: {
                noteWindow.visible = true
                border.visible = false
                save.visible = false
                open.visible = false
                textarea.visible = false
                back.visible = false
            }
        }
    }
    Item {
        anchors.fill: parent
        TextArea {
            visible: false
            id: textarea1
            x: 100
            y: 10
            height: 500
            width: 265
            placeholderText: "Notes"
            wrapMode: TextEdit.NoWrap
            background: Rectangle {
                implicitWidth: 265
                implicitHeight: 500
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: textarea2
            x: 10
            y: 10
            height: 500
            width: 80
            placeholderText: "Vocab"
            wrapMode: TextEdit.NoWrap
            visible: false
            background: Rectangle {
                implicitWidth: 80
                implicitHeight: 500
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: textarea3
            x: 10
            y: 520
            height: 140
            width: 355
            wrapMode: TextEdit.NoWrap
            placeholderText: "Summary"
            visible: false
            background: Rectangle {
                implicitWidth: 365
                implicitHeight: 450
                border.color: "#ffffff"
            }
        }
        RoundButton {
            id: saveCornell
            radius: 5
            visible: false
            text: "Save"
            x: 375 - 98
            y: 630
            width: 98
            height: 40
            onClicked: {
                saveFileDialogCornell.open()
            }
        }
        RoundButton {
            id: openCornell
            radius: 5
            visible: false
            text: "Open"
            x: 375 - 98
            y: 0
            width: 98
            height: 40
            onClicked: {
                openFileDialogCornell.open()
            }
        }
        RoundButton {
            id: backCornell
            radius: 5
            visible: false
            text: "Back"
            x: 0
            y: 630
            width: 98
            height: 40
            onClicked: {
                noteWindow.visible = true
                textarea1.visible = false
                textarea2.visible = false
                textarea3.visible = false
                backCornell.visible = false
                openCornell.visible = false
                saveCornell.visible = false
                border.visible = false
                button4.visible = true
            }
        }
    }
}
