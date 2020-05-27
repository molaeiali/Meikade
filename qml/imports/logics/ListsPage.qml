import QtQuick 2.12
import AsemanQml.Base 2.0
import AsemanQml.Viewport 2.0
import globals 1.0
import views 1.0
import models 1.0

Viewport {

    signal closeRequest()

    mainItem: ListsView {
        anchors.fill: parent
        listView.model: ListsModel {}
        closeBtn.onClicked: closeRequest()
        onClicked: Viewport.viewport.append(favoritedPoets_component, {}, "page")
    }

    Component {
        id: favoritedPoets_component
        FavoritedPoetsListView {
            listView.model: FavoritedPoetsListModel {}
            backBtn.onClicked: ViewportType.open = false
            closeBtn.onClicked: closeRequest()
        }
    }
}
