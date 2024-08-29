#include "Man.h"

void Man::init(Chess* chess)
{
	this->chess= chess;
}

void Man::go()
{
	MOUSEMSG msg;
	ChessPos pos;
	//��ȡ�����Ϣ
	
	while (1)
	{
		msg = GetMouseMsg();
		//ͨ��chess ���� ������ �ж������Ƿ���Ч���Լ����ӹ���
		if (msg.uMsg == WM_LBUTTONDOWN && chess->clickBoard(msg.x, msg.y, &pos))
		{
			break;
		}
	}
	//����
	chess->chessDown(&pos, CHESS_BLACK);
	printf("Man: (%d, %d)\n",pos.row,pos.col);
}
