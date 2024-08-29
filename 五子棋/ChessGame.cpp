#include "ChessGame.h"


ChessGame::ChessGame(Man* man, AI* ai, Chess* chess)
{
	this->ai = ai;
	this->chess = chess;
	this->man = man;
	man->init(chess);
	ai->init(chess);
}

void ChessGame::play()
{
	chess->init();
	while (1)
	{
		//������������
		man->go();
		if (chess->checkOver())
		{
			chess->init();
			continue;
		}
		ai->go();
		if (chess->checkOver())
		{
			chess->init();
			continue;
		}
	}
}
