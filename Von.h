#pragma once
#include "lib/appEnv.hpp"

class burst{
public:
	burst();
	~burst();

	//���j�̉摜
	Texture von;

	//�����̉摜�̐؂���
	int von_x = 0;
	int von_y = 0;

	//�������鎞��
	int von_time = 0;

	//�֐�
	void disp_von();
};