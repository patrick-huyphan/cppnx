/*
 * CE_NodeViewWidget.cpp
 *
 *  Created on: Jul 2, 2013
 *      Author: joost
 */

#include "CE_NodeViewWidget.h"
//#include "CE_FinalNodeView.h"
#include "CE_CommandNodeView.h"
//#include "CE_Window.h"
#include "CE_Util.h"
//#include "CE_Node.h"

NodeViewWidget::NodeViewWidget(QWidget* widget):
DragAndDropGraphicsView(widget){
	//Create scene
//	QGraphicsScene *scene = new QGraphicsScene(this);
	scene()->setItemIndexMethod(QGraphicsScene::NoIndex);
	scene()->setSceneRect(0, 0, NodeView::node_width, NodeView::node_height);

	//Widget settings
	setMinimumSize(NodeView::node_width + sidebarMargin, NodeView::node_height + sidebarMargin);
	setAlignment(Qt::AlignTop);
//	setScene(scene);
    setDragMode(ScrollHandDrag);

    deleteViewNodeAction = new QAction(tr("&Delete from sidebar"), this);
    deleteViewNodeAction->setShortcut(tr("Alt+D"));
    deleteViewNodeAction->setStatusTip(tr("Remove the selected node from the sidebar"));
    deleteViewNodeAction->setDisabled(true);

    saveImageAction = new QAction(tr("&Export nodes as jpg"), this);
    saveImageAction->setStatusTip(tr("Saves the current images of the nodes as jpg pictures"));

    connect(deleteViewNodeAction, SIGNAL(triggered()), this, SLOT(deleteNodeView()));
    connect(scene()	, SIGNAL(selectionChanged()), this, SLOT(selectionUpdated()));
    connect(saveImageAction, SIGNAL(triggered()), this, SLOT(saveImage()));

    nodeviewMenu = new QMenu(tr("nodeview"));
    nodeviewMenu->addAction(deleteViewNodeAction);
    nodeviewMenu->addAction(saveImageAction);


}

NodeViewWidget::~NodeViewWidget() {
	// TODO Auto-generated destructor stub
}




void NodeViewWidget::clearNodeViews(){
	clearObjects();
//	scene()->clear();
//	nodeViews.clear();
//	setSidebarSceneRect();
}

//void NodeViewWidget::setNodeviewPositions(){
//	size_t index = 0;
//	foreach(NodeView* node, nodeViews){
//		setNodeviewPosition(node, index);
////		node->setPosition(index);
//		node->setIndex(index);
//		index++;
//	}
//}

void NodeViewWidget::deleteNodeView(NodeView* nodeToDelete){
	removeDragAndDropObject(nodeToDelete);
//	disconnect(nodeToDelete, SIGNAL(requestMove(uint, uint)), this, SLOT(moveNodes(uint, uint)));
//	disconnect(nodeToDelete, SIGNAL(contextMenuEvent(SelectableObject*, bool)), this, SLOT(ContextMenuEvent(SelectableObject*, bool)));
//
//	scene()->removeItem(nodeToDelete);
//	nodeViews.removeAll(nodeToDelete);
//
//	setNodeviewPositions();
//	setSidebarSceneRect();
}

void NodeViewWidget::insertNodeView(NodeView* nodeView, size_t index){
	insertDragAndDropObject(nodeView, index);
//
//	connect(nodeView, SIGNAL(requestMove(uint, uint)), this, SLOT(moveNodes(uint, uint)));
//	connect(nodeView, SIGNAL(contextMenuEvent(SelectableObject*, bool)), this, SLOT(ContextMenuEvent(SelectableObject*, bool)));
	nodeView->setContextMenu(nodeviewMenu);
//    if(nodeView->getNode()){
//    	nodeView->getNode()->redraw();
//    }
//	nodeViews.insert(index, nodeView);
//    scene()->addItem(nodeView);
//    setNodeviewPositions();
//    setSidebarSceneRect();

}

void NodeViewWidget::addNodeView(NodeView* nodeView){
//	std::cout << "Nr of objects: " << objects.count() << std::endl;
	insertNodeView(nodeView, objects.count());
}


//void NodeViewWidget::setNodeviewPosition(NodeView* node, size_t index){
//	node->setPos(NodeView::half_width,NodeView::half_height + index*(NodeView::node_height + betweenNodeMargin));
//}

//void NodeViewWidget::setSidebarSceneRect(){
//	 scene()->setSceneRect(0, 0, NodeView::node_width, scene()->items().size()*(NodeView::node_height + betweenNodeMargin));
//}

void NodeViewWidget::addNodeView(QList<QGraphicsItem*> nodes){
	emit requestCommandExecution(new CommandNodeView(this, nodes, true));
}

void NodeViewWidget::deleteNodeView(){
	emit requestCommandExecution(new CommandNodeView(this, scene()->selectedItems(), false));
}

void NodeViewWidget::selectionUpdated(){
	bool nodeIsViewSelected = false;

	foreach(QGraphicsItem* item, scene()->selectedItems()){
		if(qgraphicsitem_cast<NodeView*>(item)) nodeIsViewSelected = true;
	}

	deleteViewNodeAction->setEnabled(nodeIsViewSelected);
}

void NodeViewWidget::saveImage(){
	if(scene()->selectedItems().count() > 1){
		QString captureDirectory = QFileDialog::getExistingDirectory(this, tr("Chose save directory"), "", QFileDialog::ShowDirsOnly);
		if(captureDirectory.isEmpty()) return;

		foreach(QGraphicsItem* item, scene()->selectedItems()){
			NodeView* nodeview = util::multiCast<NodeView*, FinalNodeView*>(item);
			if(nodeview){
				QString newFileName;
				if(nodeview->getNode()){
					newFileName = captureDirectory + "/node_" + util::toQString(nodeview->getNode()->getBranch()) + "_" + util::toQString(nodeview->getNode()->getId()) + ".jpg";
				} else {
					newFileName = captureDirectory + "/node_final.jpg";
				}
				nodeview->getImage()->save(newFileName);
			}
		}
	} else if(scene()->selectedItems().count() == 1) {
		NodeView* nodeview = util::multiCast<NodeView*, FinalNodeView*>(scene()->selectedItems().front());
		if(nodeview){
			QString newFileName = QFileDialog::getSaveFileName(this, tr("Save Node Image"), "",tr("JPEG File (*.jpg);;All Files (*)"));
			if(newFileName.isEmpty()) return;
			nodeview->getImage()->save(newFileName);
		}
	}
}
