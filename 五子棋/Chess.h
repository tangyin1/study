#pragma once
#include<graphics.h>
#include<vector>
#include<iostream>

using namespace std;

//棋盘位置
struct ChessPos
{
	
	int row;
	int col;

	ChessPos(int r = 0,int c=0):row(r),col(c){}

};

//棋子类型
typedef enum
{
	CHESS_WHITE =-1,//白棋
	CHESS_BLACK=1 //黑棋
	
}chess_kind_t;

class Chess
{
public:
	Chess(int gradeSize,int marginX,int marginY,float chessSize);
	void init();//棋盘初始化
	bool clickBoard(int x, int y, ChessPos* pos);

	void chessDown(ChessPos *pos, chess_kind_t kind);
	int getGradeSize();//获取棋盘大小
	//获取指定位置是黑棋还是白棋 或者空白
	int getChessData(ChessPos* pos);
	int getChessData(int row, int col);
	bool checkWin();
	bool checkOver();

	void putimagePNG(int x, int y, IMAGE* picture);
private:
	IMAGE chessBlackImg;
	IMAGE chessWhiteImg;

	int gradeSize;//棋盘大小
	int margin_x;//棋盘左侧边界
	int margin_y;//棋盘顶部边界
	float chessSize;
	vector<vector<int>> chessMap; //存储当前棋局的棋子分布数据
	//chessMap[3][5]表示棋盘的第三行第五列的落子情况 0：空白 1：黑子 -1 ：白子
	ChessPos lastPos; //最近落子位置, Chess的private数据成员
	//谁下棋
	bool playerFlag;//true 表示黑走

	void updateGameMap(ChessPos* pos);
};

