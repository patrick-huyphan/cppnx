/*
 * CE_CommandSetWeight.h
 *
 *  Created on: Jun 28, 2013
 *      Author: joost
 */

#ifndef CE_COMMANDSETWEIGHT_H_
#define CE_COMMANDSETWEIGHT_H_

#include <qundostack.h>

#include "CE_Defines.h"
#include "CE_Edge.h"
//#include "CX_CXUndoCommand.h"

class CommandSetWeight: public QUndoCommand {
public:
	CommandSetWeight(QList<QGraphicsItem*> items);
	CommandSetWeight(Edge* edge, qreal weight);
	virtual ~CommandSetWeight();

	void undo();
	void redo();

	int id() const{
		return comId;
	}
	bool mergeWith(const QUndoCommand *other);


private:
	typedef std::pair<qreal, qreal> weightPair_t;
	typedef std::pair<Edge*, weightPair_t > triple_t;

	QList<triple_t > edgeTriples;
	int comId;
};

#endif /* CE_COMMANDSETWEIGHT_H_ */
