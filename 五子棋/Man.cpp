#include "Man.h"

void Man::init(Chess* chess)
{
	this->chess= chess;
}

void Man::go()
{
	MOUSEMSG msg;
	ChessPos pos;
	//获取鼠标消息
	
	while (1)
	{
		msg = GetMouseMsg();
		//通过chess 对象 来调用 判断落子是否有效，以及落子功能
		if (msg.uMsg == WM_LBUTTONDOWN && chess->clickBoard(msg.x, msg.y, &pos))
		{
			break;
		}
	}
	//落子
	chess->chessDown(&pos, CHESS_BLACK);
	printf("Man: (%d, %d)\n",pos.row,pos.col);
}
