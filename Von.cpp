#include "Von.h"
#include "lib/appEnv.hpp"

burst::burst() :von("res/von.png")
{
}


burst::~burst()
{
}


void burst::disp_von(){

	//���Ԃ����ȏ�Ȃ�
	if (von_time >= 1){
		//���Ԃ𑝂₷
		von_time += 1;

		//von�̎��Ԃ�1�ȏゾ�����甚�j�J�n
		if (von_time >= 1){
			drawTextureBox(-150, -150, 300, 300,
				von_x, von_y, 256, 256, von, Color(1, 1, 1));
		}

		//��u�\����������
		if (von_time >= 2){
			von_x += 256;
			von_y += 256;
			von_time = 1;
		}

		//�\������������I���
		if (von_x > 256 * 15){
			//�����l�ɖ߂�
			von_x = 0;
			von_y = 0;
			von_time = 0;
		}
	}

}