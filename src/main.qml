import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

import "HarrixQML"
import "HarrixQML/internal"

MainWindow {
    title: qsTr("Harrix-QMLComponents - Demo")

    navigationDrawer.drawer: LeftPanel {}

    head.logo.source: "qrc:/images/logo-harrix.svg"

    head.centerMobileElement: CenterMobileElement {id:centerMobileElementApp;}

    head.colorMobileMode: false

    head.mainMenu.mainMenuModel: ListModel {
        ListElement { name: "File";       caption: qsTr("File"); }
        ListElement { name: "Options";    caption: qsTr("Options"); }
        ListElement { name: "Harrix.org"; caption: qsTr("Harrix.org");}
        ListElement { name: "About";      caption: qsTr("About");}
    }

    onClickItemMainMenu: {
        console.log(name);
        /*if (name === "File")
           optionsMenu.open();*/
    }

    content: Content {}

    Component.onCompleted: {
        if (head.colorMobileMode)
            head.centerMobileElementItem.source = "qrc:/images/logo-harrix-white.svg";
        else
            head.centerMobileElementItem.source = "qrc:/images/logo-harrix.svg";
    }
}
