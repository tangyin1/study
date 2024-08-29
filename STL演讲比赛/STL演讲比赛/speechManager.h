#pragma once
#include<iostream>
#include"speaker.h"
#include<vector>
#include<map>
using namespace std;
//演讲管理类
class SpeechManager
{
public:
	//构造函数
	SpeechManager();
	void show_Menu();
	void exitSystem();
	//初始化属性
	void initSpeech();
	//初始化创建12名选手
	void createSpeaker();
	void startSpeech();
	//抽签
	void speechDraw();
	//比赛
	void speechContest();
	// 显示比赛结果
	void showScore();
	//保存结果
	void saveRecord();
	//保存记录
	void loadRecord();
	// 显示往届得分
	void showRecord();
	//清空记录
	void clearRecord();
	//析构函数
	~SpeechManager();
public:
	//比赛选手 容器 12人
	vector<int>v1;
	//第一轮晋级容器 6人
	vector<int>v2;
	//胜利前三名容器 3人
	vector<int>vVictory;
	//存放编号 以及对应的 具体选手 容器
	map<int, Speaker> m_Speaker;
	//比赛轮数
	int m_Index;

	//文件为空的标志
	bool fileIsEmpty;
	//往届记录
	map<int, vector<string>> m_Record;//其中m_Record 中的key代表第几届，value记录具体的信息


};
