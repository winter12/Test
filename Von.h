#pragma once
#include "lib/appEnv.hpp"

class burst{
public:
	burst();
	~burst();

	//爆破の画像
	Texture von;

	//爆発の画像の切り取り
	int von_x = 0;
	int von_y = 0;

	//爆発する時間
	int von_time = 0;

	//関数
	void disp_von();
};