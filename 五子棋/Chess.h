#pragma once
#include<graphics.h>
#include<vector>
#include<iostream>

using namespace std;

//����λ��
struct ChessPos
{
	
	int row;
	int col;

	ChessPos(int r = 0,int c=0):row(r),col(c){}

};

//��������
typedef enum
{
	CHESS_WHITE =-1,//����
	CHESS_BLACK=1 //����
	
}chess_kind_t;

class Chess
{
public:
	Chess(int gradeSize,int marginX,int marginY,float chessSize);
	void init();//���̳�ʼ��
	bool clickBoard(int x, int y, ChessPos* pos);

	void chessDown(ChessPos *pos, chess_kind_t kind);
	int getGradeSize();//��ȡ���̴�С
	//��ȡָ��λ���Ǻ��廹�ǰ��� ���߿հ�
	int getChessData(ChessPos* pos);
	int getChessData(int row, int col);
	bool checkWin();
	bool checkOver();

	void putimagePNG(int x, int y, IMAGE* picture);
private:
	IMAGE chessBlackImg;
	IMAGE chessWhiteImg;

	int gradeSize;//���̴�С
	int margin_x;//�������߽�
	int margin_y;//���̶����߽�
	float chessSize;
	vector<vector<int>> chessMap; //�洢��ǰ��ֵ����ӷֲ�����
	//chessMap[3][5]��ʾ���̵ĵ����е����е�������� 0���հ� 1������ -1 ������
	ChessPos lastPos; //�������λ��, Chess��private���ݳ�Ա
	//˭����
	bool playerFlag;//true ��ʾ����

	void updateGameMap(ChessPos* pos);
};

