import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtQuick.Layouts
import FluentUI

FluWindow {
    visible: true
    width: 480
    height: 360
    title: qsTr("TabBar工具栏")

    TabBar {
        id:             tabBar
        TabButton { text: qsTr("我是目录1") }
        TabButton { text: qsTr("我是目录2") }
        TabButton { text: qsTr("我是目录3") }
    }

}
