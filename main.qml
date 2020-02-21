import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Dialogs 1.3

ApplicationWindow {
    visible: true
    width: 375
    height: 667
    title: qsTr("StudEasy (Beta 1.0)")
    maximumHeight: height
    maximumWidth: width
    minimumHeight: height
    minimumWidth: width
    function openFile(fileUrl) {
            var request = new XMLHttpRequest();
            request.open("GET", fileUrl, false);
            request.send(null);
            return request.responseText;
    }
    function saveFile(fileUrl, text) {
        var request = new XMLHttpRequest();
        request.open("PUT", fileUrl, false);
        request.send(text);
        return request.status;
    }
    function saveFileCornell1(folderUrl, text) {
        var request = new XMLHttpRequest();
        request.open("PUT", folderUrl+"/text1.txt", false);
        request.send(text);
        return request.status;
    }
    function saveFileCornell2(folderUrl, text) {
        var request = new XMLHttpRequest();
        request.open("PUT", folderUrl+"/text2.txt", false);
        request.send(text);
        return request.status;
    }
    function saveFileCornell3(folderUrl, text) {
        var request = new XMLHttpRequest();
        request.open("PUT", folderUrl+"text3.txt", false);
        request.send(text);
        return request.status;
    }
    function openFileCornell1(folderUrl) {
        var request = new XMLHttpRequest();
        request.open("GET", folderUrl+"text1.txt", false);
        request.send(null);
        return request.responseText;
    }
    function openFileCornell2(folderUrl) {
        var request = new XMLHttpRequest();
        request.open("GET", folderUrl+"text2.txt", false);
        request.send(null);
        return request.responseText;
    }
    function openFileCornell3(folderUrl) {
        var request = new XMLHttpRequest();
        request.open("GET", folderUrl+"text3.txt", false);
        request.send(null);
        return request.responseText;
    }
    function saveFileCornell4(folderUrl) {
        var request = new XMLHttpRequest();
        request.open("PUT", folderUrl+"README.txt", false);
        request.send("DO NOT RENAME THESE FILES!  PUT THESE FILES IN THEIR OWN FOLDER IF NOT ALREADY DONE SO!
        IF YOU DO, RENAME THEM BACK TO THEIR ORIGINAL NAME
        (text1.txt, text2.txt, & text3.txt)");
        return request.responseText;
    }
    function saveFileFlash(folderUrl, text) {
        var request = new XMLHttpRequest();
        request.open("PUT", folderUrl, false);
        request.send(text);
        return request.status;
    }
    function openFileFlash(folderUrl) {
            var request = new XMLHttpRequest();
            request.open("GET", folderUrl, false);
            request.send(null);
            return request.responseText;
    }
    Timer {
        id: timer
    }
    function delay(delayTime, cb) {
        timer.interval = delayTime;
        timer.repeat = true;
        timer.triggered.connect(cb);
        timer.start();
    }
    SwipeView {
        id: swipeView
        anchors.fill: parent
        Page1Form {
        }

        Page2Form {
        }
    }
}
