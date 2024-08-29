#pragma once
#include<iostream>
#include"worker.h"
#define FILENAME "empFile.txt"
using namespace std;
class WorkerManager
{
public:
	//���캯��
	WorkerManager();
	
	//��ʾ�˵�
	void Show_Menu();
	//�˳�ϵͳ
	void ExitSystem();

	//��¼�ļ��������ĸ���
	int m_EmpNum;
	//Ա�������ָ��
	Worker** m_EmpArray;
	//���ְ��
	void Add_Emp();

	//�����ļ�
	void save();

	/*1. ��һ��ʹ�ã��ļ�δ����
	2. �ļ����ڣ��������ݱ��û����
	3. �ļ����ڣ����ұ���ְ������������*/

	//��־�ļ��Ƿ�Ϊ��
	bool m_FileIsEmpty;

	//ͳ������
	int get_EmpNum();

	//��ʼ������
	void init_Emp();

	//��ʾְ��
	void Show_Emp();


	//ɾ��ְ��
	void Del_Emp();

	/*�ܶ๦�ܶ���Ҫ�õ�����ְ���Ƿ���������в����磺ɾ��ְ�����޸�ְ��������ְ��
		�����Ӹù��溯�����Ա��������
		��ӳ�Ա���� int IsExist(int id);*/
	int IsExist(int id);


	//�޸�ְ��
	void Mod_Emp();

	//����ְ��
	void Find_Emp();

	//����ְ��
	void Sort_Emp();

	//����ļ�
	void clean_File();
	//��������
	~WorkerManager();

	
};