#pragma once
#include<iostream>
#include"speaker.h"
#include<vector>
#include<map>
using namespace std;
//�ݽ�������
class SpeechManager
{
public:
	//���캯��
	SpeechManager();
	void show_Menu();
	void exitSystem();
	//��ʼ������
	void initSpeech();
	//��ʼ������12��ѡ��
	void createSpeaker();
	void startSpeech();
	//��ǩ
	void speechDraw();
	//����
	void speechContest();
	// ��ʾ�������
	void showScore();
	//������
	void saveRecord();
	//�����¼
	void loadRecord();
	// ��ʾ����÷�
	void showRecord();
	//��ռ�¼
	void clearRecord();
	//��������
	~SpeechManager();
public:
	//����ѡ�� ���� 12��
	vector<int>v1;
	//��һ�ֽ������� 6��
	vector<int>v2;
	//ʤ��ǰ�������� 3��
	vector<int>vVictory;
	//��ű�� �Լ���Ӧ�� ����ѡ�� ����
	map<int, Speaker> m_Speaker;
	//��������
	int m_Index;

	//�ļ�Ϊ�յı�־
	bool fileIsEmpty;
	//�����¼
	map<int, vector<string>> m_Record;//����m_Record �е�key����ڼ��죬value��¼�������Ϣ


};
