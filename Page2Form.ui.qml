import QtQuick 2.12
import QtQuick.Controls 2.5
import QtMultimedia 5.13
import QtQuick.Dialogs 1.0

Page {
    property int min: 15
    property int sec: 0
    Item {
        id: mainWindow
        width: 375
        height: 670
        Image {
            id: bg
            x: -378
            y: 0
            width: 960
            height: 667
            source: "bg1.png"
        }
        Image {
            id: image
            x: 89
            y: 159
            width: 197
            height: 198
            source: "timer-icon.png"
        }
        RoundButton {
            id: button
            radius: 5
            text: "Study"
            x: 139
            y: 427
            width: 98
            height: 40
            onClicked: {
                mainWindow.visible = false
                studyWindow.visible = true
                bg1.visible = true
            }
        }
    }
    Item {
        visible: false
        id: studyWindow
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
            text: "Pomodoro"
            x: 139
            y: 296
            width: 98
            height: 40
            onClicked: {
                pomodoro.visible = true
                studyWindow.visible = false
                back1.visible = true
                bg1.visible = true
            }
        }
        RoundButton {
            id: back
            visible: false
            radius: 5
            text: "Back"
            x: 139
            y: 503
            width: 98
            height: 40
            onClicked: {
                back.visible = false
                pomodoro.visible = false
                studyWindow.visible = true
            }
        }
        RoundButton {
            id: button2
            radius: 5
            text: "Flashcards"
            x: 139
            y: 80
            width: 98
            height: 40
            onClicked: {
                bg5.visible = true
                flashmenu.visible = true
                button5.visible = true
                back12.visible = true
                button6.visible = true
                studyWindow.visible = false
                button1.visible = false
                back.visible = false
                button2.visible = false
            }
        }
        RoundButton {
            id: button4
            radius: 5
            text: "Back"
            x: 139
            y: 503
            width: 98
            height: 40
            onClicked: {
                mainWindow.visible = true
                studyWindow.visible = false
                bg1.visible = false
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
        id: pomodoro
        visible: false
        BorderImage {
            id: bg1
            x: 0
            y: 0
            width: 960
            height: 667
            visible: false
            source: "bg.png"
        }
        Text {
            id: time
            font.pixelSize: 40
            x: 139
            y: 296
            color: "#ffffff"
            text: {
                if (sec < 10) {
                    min.toString() + ":0" + sec.toString()
                } else {
                    min.toString() + ":" + sec.toString()
                }
            }
        }
        MediaPlayer {
            id: alarm
            source: "file:///C:/Users/willm/Google Drive/Portfolio/church-chime.wav"
        }
        RoundButton {
            id: timerbegin
            radius: 5
            text: "Begin"
            x: 139
            y: 503
            width: 98
            height: 40
            onClicked: {
                delay(1000, function () {
                    sec -= 1
                    if (sec < 0) {
                        sec = 59
                        min -= 1
                        if (min < 0) {
                            alarm.play()
                            sec = 0
                            min = 0
                        }
                    }
                })
            }
        }
        RoundButton {
            id: back1
            radius: 5
            visible: false
            text: "Back"
            x: 0
            y: 630
            width: 98
            height: 40
            onClicked: {
                pomodoro.visible = false
                studyWindow.visible = true
            }
        }
    }
    Item {
        id: flashmenu
        visible: false
        Image {
            id: bg5
            source: "bg.png"
            x: 0
            y: 0
            width: 970
            height: 670
            visible: false
        }
        RoundButton {
            id: back12
            radius: 5
            visible: false
            text: "Back"
            x: 139
            y: 503
            width: 98
            height: 40
            onClicked: {
                flashmenu.visible = false
                button5.visible = false
                bg5.visible = false
                back12.visible = false
                button6.visible = false
                studyWindow.visible = true
                button1.visible = true
                back.visible = true
                button2.visible = true
            }
        }
        RoundButton {
            id: button5
            radius: 5
            text: "Create Set"
            x: 139
            y: 80
            width: 98
            height: 40
            visible: false
            onClicked: {
                flashgen.visible = true
                studyWindow.visible = false
                termarea.visible = true
                defarea.visible = true
                termarea2.visible = true
                defarea2.visible = true
                termarea3.visible = true
                defarea3.visible = true
                termarea4.visible = true
                defarea4.visible = true
                termarea5.visible = true
                defarea5.visible = true
                termarea6.visible = true
                defarea6.visible = true
                termarea7.visible = true
                defarea7.visible = true
                termarea8.visible = true
                defarea8.visible = true
                termarea9.visible = true
                defarea9.visible = true
                termarea10.visible = true
                defarea10.visible = true
                termarea11.visible = true
                defarea11.visible = true
                termarea12.visible = true
                defarea12.visible = true
                defarea13.visible = true
                termarea13.visible = true
                defarea14.visible = true
                termarea14.visible = true
                defarea15.visible = true
                termarea15.visible = true
                bg2.visible = true
                save.visible = true
                open.visible = true
                back7.visible = true
            }
        }
        RoundButton {
            id: button6
            radius: 5
            text: "Study Set"
            x: 139
            y: 296
            width: 98
            height: 40
            visible: false
            onClicked: {
                flashmenu.visible = false
                flashstudy.visible = true
                bg6.visible = true
                back9.visible = true
            }
        }
    }
    Item {
        id: flashstudy
        visible: false
        property var text1: " "
        Image {
            id: bg6
            source: "bg.png"
            width: 970
            height: 670
            x: 0
            y: 0
            visible: false
        }
        RoundButton {
            id: back9
            visible: false
            radius: 5
            text: "Back"
            x: 139
            y: 503
            width: 98
            height: 40
            onClicked: {
                flashmenu.visible = true
                flashstudy.visible = false
                bg6.visible = false
            }
        }
    }
    Item {
        visible: false
        id: flashgen
        Image {
            id: bg2
            source: "bg.png"
            width: 960
            height: 667
            x: 0
            y: 0
            visible: false
        }
        FileDialog {
            id: saveFileDialogFlash
            selectFolder: true
            onAccepted: {
                saveFileFlash(saveFileDialogFlash.folder + "/text1-1.txt",
                              termarea.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text1-2.txt",
                              defarea.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text2-1.txt",
                              termarea2.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text2-2.txt",
                              defarea2.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text3-1.txt",
                              termarea3.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text3-2.txt",
                              defarea3.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text4-1.txt",
                              termarea4.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text4-2.txt",
                              defarea4.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text5-1.txt",
                              termarea5.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text5-2.txt",
                              defarea5.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text6-1.txt",
                              termarea6.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text6-2.txt",
                              defarea6.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text7-1.txt",
                              termarea7.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text7-2.txt",
                              defarea7.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text8-1.txt",
                              termarea8.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text8-2.txt",
                              defarea8.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text9-1.txt",
                              termarea9.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text9-2.txt",
                              defarea9.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text10-1.txt",
                              termarea10.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text10-2.txt",
                              defarea10.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text11-1.txt",
                              termarea11.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text11-2.txt",
                              defarea11.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text12-1.txt",
                              termarea12.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text12-2.txt",
                              defarea12.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text13-1.txt",
                              termarea13.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text13-2.txt",
                              defarea13.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text14-1.txt",
                              termarea14.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text14-2.txt",
                              defarea14.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text15-1.txt",
                              termarea15.text)
                saveFileFlash(saveFileDialogFlash.folder + "/text15-2.txt",
                              defarea15.text)
            }
        }
        FileDialog {
            id: openFileDialogFlash
            selectExisting: false
            selectFolder: true
            onAccepted: {
                termarea.text = openFileFlash(
                            openFileDialogFlash.folder + "/text1-1.txt")
                termarea2.text = openFileFlash(
                            openFileDialogFlash.folder + "/text2-1.txt")
                termarea3.text = openFileFlash(
                            openFileDialogFlash.folder + "/text3-1.txt")
                termarea4.text = openFileFlash(
                            openFileDialogFlash.folder + "/text4-1.txt")
                termarea5.text = openFileFlash(
                            openFileDialogFlash.folder + "/text5-1.txt")
                termarea6.text = openFileFlash(
                            openFileDialogFlash.folder + "/text6-1.txt")
                termarea7.text = openFileFlash(
                            openFileDialogFlash.folder + "/text7-1.txt")
                termarea8.text = openFileFlash(
                            openFileDialogFlash.folder + "/text8-1.txt")
                termarea9.text = openFileFlash(
                            openFileDialogFlash.folder + "/text9-1.txt")
                termarea10.text = openFileFlash(
                            openFileDialogFlash.folder + "/text10-1.txt")
                termarea11.text = openFileFlash(
                            openFileDialogFlash.folder + "/text11-1.txt")
                termarea12.text = openFileFlash(
                            openFileDialogFlash.folder + "/text12-1.txt")
                termarea13.text = openFileFlash(
                            openFileDialogFlash.folder + "/text13-1.txt")
                termarea14.text = openFileFlash(
                            openFileDialogFlash.folder + "/text14-1.txt")
                termarea15.text = openFileFlash(
                            openFileDialogFlash.folder + "/text15-1.txt")
                defarea.text = openFileFlash(
                            openFileDialogFlash.folder + "/text1-2.txt")
                defarea2.text = openFileFlash(
                            openFileDialogFlash.folder + "/text2-2.txt")
                defarea3.text = openFileFlash(
                            openFileDialogFlash.folder + "/text3-2.txt")
                defarea4.text = openFileFlash(
                            openFileDialogFlash.folder + "/text4-2.txt")
                defarea5.text = openFileFlash(
                            openFileDialogFlash.folder + "/text5-2.txt")
                defarea6.text = openFileFlash(
                            openFileDialogFlash.folder + "/text6-2.txt")
                defarea7.text = openFileFlash(
                            openFileDialogFlash.folder + "/text7-2.txt")
                defarea8.text = openFileFlash(
                            openFileDialogFlash.folder + "/text8-2.txt")
                defarea9.text = openFileFlash(
                            openFileDialogFlash.folder + "/text9-2.txt")
                defarea10.text = openFileFlash(
                            openFileDialogFlash.folder + "/text10-2.txt")
                defarea11.text = openFileFlash(
                            openFileDialogFlash.folder + "/text11-2.txt")
                defarea12.text = openFileFlash(
                            openFileDialogFlash.folder + "/text12-2.txt")
                defarea13.text = openFileFlash(
                            openFileDialogFlash.folder + "/text13-2.txt")
                defarea14.text = openFileFlash(
                            openFileDialogFlash.folder + "/text14-2.txt")
                defarea15.text = openFileFlash(
                            openFileDialogFlash.folder + "/text15-2.txt")
            }
        }
        TextArea {
            id: termarea
            x: 10
            y: 10
            height: 30
            width: (355 / 2) - 20
            placeholderText: "Term"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: defarea
            x: (355 / 2)
            y: 10
            height: 30
            width: 355 / 2
            placeholderText: "Definition"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: termarea2
            x: 10
            y: 20 + 30
            height: 30
            width: (355 / 2) - 20
            placeholderText: "Term"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: defarea2
            x: (355 / 2)
            y: 20 + 30
            height: 30
            width: 355 / 2
            placeholderText: "Definition"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: termarea3
            x: 10
            y: 30 + 60
            height: 30
            width: (355 / 2) - 20
            placeholderText: "Term"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: defarea3
            x: (355 / 2)
            y: 30 + 60
            height: 30
            width: 355 / 2
            placeholderText: "Definition"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: termarea4
            x: 10
            y: 10 + 90 + 30
            height: 30
            width: (355 / 2) - 20
            placeholderText: "Term"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: defarea4
            x: (355 / 2)
            y: 10 + 90 + 30
            height: 30
            width: 355 / 2
            placeholderText: "Definition"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: termarea5
            x: 10
            y: 10 + 10 + 90 + 30 + 30
            height: 30
            width: (355 / 2) - 20
            placeholderText: "Term"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: defarea5
            x: (355 / 2)
            y: 10 + 10 + 90 + 30 + 30
            height: 30
            width: 355 / 2
            placeholderText: "Definition"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: termarea6
            x: 10
            y: 10 + 10 + 90 + 30 + 40 + 30
            height: 30
            width: (355 / 2) - 20
            placeholderText: "Term"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: defarea6
            x: (355 / 2)
            y: 10 + 10 + 90 + 30 + 40 + 30
            height: 30
            width: 355 / 2
            placeholderText: "Definition"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: termarea7
            x: 10
            y: 10 + 10 + 90 + 30 + 40 + 30 + 40
            height: 30
            width: (355 / 2) - 20
            placeholderText: "Term"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: defarea7
            x: (355 / 2)
            y: 10 + 10 + 90 + 30 + 40 + 30 + 40
            height: 30
            width: 355 / 2
            placeholderText: "Definition"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: termarea8
            x: 10
            y: 10 + 40 + 10 + 90 + 30 + 40 + 30 + 40
            height: 30
            width: (355 / 2) - 20
            placeholderText: "Term"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: defarea8
            x: (355 / 2)
            y: 10 + 40 + 10 + 90 + 30 + 40 + 30 + 40
            height: 30
            width: 355 / 2
            placeholderText: "Definition"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: termarea9
            x: 10
            y: 10 + 40 + 10 + 90 + 30 + 40 + 30 + 40 + 40
            height: 30
            width: (355 / 2) - 20
            placeholderText: "Term"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: defarea9
            x: (355 / 2)
            y: 10 + 40 + 10 + 90 + 30 + 40 + 30 + 40 + 40
            height: 30
            width: 355 / 2
            placeholderText: "Definition"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: termarea10
            x: 10
            y: 10 + 40 + 10 + 90 + 30 + 40 + 30 + 40 + 40 + 40
            height: 30
            width: (355 / 2) - 20
            placeholderText: "Term"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: defarea10
            x: (355 / 2)
            y: 10 + 40 + 10 + 90 + 30 + 40 + 30 + 40 + 40 + 40
            height: 30
            width: 355 / 2
            placeholderText: "Definition"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: termarea11
            x: 10
            y: 10 + 40 + 10 + 90 + 30 + 40 + 30 + 40 + 40 + 40 + 40
            height: 30
            width: (355 / 2) - 20
            placeholderText: "Term"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: defarea11
            x: (355 / 2)
            y: 10 + 40 + 10 + 90 + 30 + 40 + 30 + 40 + 40 + 40 + 40
            height: 30
            width: 355 / 2
            placeholderText: "Definition"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: termarea12
            x: 10
            y: 10 + 40 + 10 + 90 + 30 + 40 + 30 + 40 + 40 + 40 + 40 + 40
            height: 30
            width: (355 / 2) - 20
            placeholderText: "Term"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: defarea12
            x: (355 / 2)
            y: 10 + 40 + 10 + 90 + 30 + 40 + 30 + 40 + 40 + 40 + 40 + 40
            height: 30
            width: 355 / 2
            placeholderText: "Definition"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: termarea13
            x: 10
            y: 10 + 40 + 10 + 90 + 30 + 40 + 30 + 40 + 40 + 40 + 40 + 40 + 40
            height: 30
            width: (355 / 2) - 20
            placeholderText: "Term"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: defarea13
            x: (355 / 2)
            y: 10 + 40 + 10 + 90 + 30 + 40 + 30 + 40 + 40 + 40 + 40 + 40 + 40
            height: 30
            width: 355 / 2
            placeholderText: "Definition"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: termarea14
            x: 10
            y: 10 + 40 + 10 + 90 + 30 + 40 + 30 + 40 + 40 + 40 + 40 + 40 + 40 + 40
            height: 30
            width: (355 / 2) - 20
            placeholderText: "Term"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: defarea14
            x: (355 / 2)
            y: 10 + 40 + 10 + 90 + 30 + 40 + 30 + 40 + 40 + 40 + 40 + 40 + 40 + 40
            height: 30
            width: 355 / 2
            placeholderText: "Definition"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: termarea15
            x: 10
            y: 10 + 40 + 10 + 90 + 30 + 40 + 30 + 40 + 40 + 40 + 40 + 40 + 40 + 40 + 40
            height: 30
            width: (355 / 2) - 20
            placeholderText: "Term"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        TextArea {
            id: defarea15
            x: (355 / 2)
            y: 10 + 40 + 10 + 90 + 30 + 40 + 30 + 40 + 40 + 40 + 40 + 40 + 40 + 40 + 40
            height: 30
            width: 355 / 2
            placeholderText: "Definition"
            visible: false
            background: Rectangle {
                border.color: "#ffffff"
            }
        }
        RoundButton {
            id: open
            radius: 5
            visible: false
            text: "Open"
            x: 0
            y: 630
            width: 98
            height: 40
            onClicked: {
                openFileDialogFlash.open()
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
                saveFileDialogFlash.open()
            }
        }
        RoundButton {
            id: back7
            radius: 5
            text: "Back"
            x: 139
            y: 630
            width: 98
            height: 40
            visible: false
            onClicked: {
                back7.visible = false
                save.visible = false
                open.visible = false
                bg2.visible = false
                back12.visible = true
                button6.visible = true
                flashmenu.visible = true
                button5.visible = true
                termarea.visible = false
                defarea.visible = false
                termarea2.visible = false
                defarea2.visible = false
                termarea3.visible = false
                defarea3.visible = false
                termarea4.visible = false
                defarea4.visible = false
                termarea5.visible = false
                defarea5.visible = false
                termarea6.visible = false
                defarea6.visible = false
                termarea7.visible = false
                defarea7.visible = false
                termarea8.visible = false
                defarea8.visible = false
                termarea9.visible = false
                defarea9.visible = false
                termarea10.visible = false
                defarea10.visible = false
                termarea11.visible = false
                defarea11.visible = false
                termarea12.visible = false
                defarea12.visible = false
                defarea13.visible = false
                termarea13.visible = false
                defarea14.visible = false
                termarea14.visible = false
                defarea15.visible = false
                termarea15.visible = false
            }
        }
    }
}
