#1.����n�u�ֶ� Beyond �� 1983 �~���ߡA�ڭ̰��]���ߤ���O 1983-12-31�A�бN���ߤ�������� beyond_start
beyong_start  <- as.Date("1983-12-31")


#2.�ХH�t�Τ���p�⤵�~�O Beyond ���ߴX�g�~
beyong_start  <- as.Date("1983-12-31")
Sys_Date <- Sys.Date()
day_diff <- Sys.Date() - as.Date("1983-12-31")  # �p��ѼƮt�Z
years_diff <- day_diff / 365 # ���H 365 ���⦨�~


#3.1999 �~ 9 �� 21 �� 1 �� 47 �� 16 ���o�;_�����n�뿤�������Aͺ��W�� 7.3 ���a�_�A�ХH��r�O���o�Ӯɶ��A�ñN��������  major_quake_time
major_quake_time <- as.character("1999-09-21 01:47:16 �o�;_�����n�뿤�������Aͺ��W�� 7.3 ���a�_")


#4.1999 �~ 9 �� 21 �� 1 �� 57 �� 15 ���o�ͲĤ@��ͺ��W�ҶW�L 6 ���l�_�A�ХH��r�O���o�Ӯɶ��A�ñN��������  first_aftershock_time
first_aftershock_time <- as.character("1999-09-21 01:57:15 �o�ͲĤ@��ͺ��W�ҶW�L 6 ���l�_")


#5.�бN�e���D���ͦ����ܼ��ഫ���ɶ������A�p�ⶡ�j�h�[�o�ͲĤ@��ͺ��W�ҶW�L 6 ���l�_
major_quake_time  <- as.POSIXct("1999-09-21 01:47:16")
first_aftershock_time <- as.POSIXct("1999-09-21 01:57:15")