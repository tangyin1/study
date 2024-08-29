#pragma once
#include<iostream>
#include"worker.h"
#define FILENAME "empFile.txt"
using namespace std;
class WorkerManager
{
public:
	//构造函数
	WorkerManager();
	
	//显示菜单
	void Show_Menu();
	//退出系统
	void ExitSystem();

	//记录文件中人数的个数
	int m_EmpNum;
	//员工数组的指针
	Worker** m_EmpArray;
	//添加职工
	void Add_Emp();

	//保存文件
	void save();

	/*1. 第一次使用，文件未创建
	2. 文件存在，但是数据被用户清空
	3. 文件存在，并且保存职工的所有数据*/

	//标志文件是否为空
	bool m_FileIsEmpty;

	//统计人数
	int get_EmpNum();

	//初始化数组
	void init_Emp();

	//显示职工
	void Show_Emp();


	//删除职工
	void Del_Emp();

	/*很多功能都需要用到根据职工是否存在来进行操作如：删除职工、修改职工、查找职工
		因此添加该公告函数，以便后续调用
		添加成员函数 int IsExist(int id);*/
	int IsExist(int id);


	//修改职工
	void Mod_Emp();

	//查找职工
	void Find_Emp();

	//排序职工
	void Sort_Emp();

	//清空文件
	void clean_File();
	//析构函数
	~WorkerManager();

	
};