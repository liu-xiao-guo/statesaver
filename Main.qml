import QtQuick 2.0
import Ubuntu.Components 1.1

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    id: mainview
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "statesaver.ubuntu"

    /*
     This property enables the application to change orientation
     when the device is rotated. The default is false.
    */
    //automaticOrientation: true

    // Removes the old toolbar and enables new features of the new header.
    useDeprecatedToolbar: false

    width: units.gu(60)
    height: units.gu(85)

    Page {
        id: mainpage
        title: i18n.tr("State saver")

        Rectangle {
            id: root
            anchors.fill: parent
            color: "green"
            StateSaver.properties: "color"

            Column {
                spacing: units.gu(2)
                anchors.centerIn: parent

                Button {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Change color"

                    onClicked: {
                        root.color = Qt.rgba(Math.random(1), Math.random(1), Math.random(1), 1);
                    }
                }

                Button {
                    anchors.horizontalCenter: parent.horizontalCenter
                    text: "Quit"

                    onClicked: Qt.quit()
                }

            }
        }
    }
}

