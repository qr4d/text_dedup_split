BEGIN{
	TEMP="3ȥ�غ����ɽ��\\X_0.txt";
}
{
		NUMBER=int(FNR/99999);
		FILENAME="3ȥ�غ����ɽ��\\X_"NUMBER".txt";
		printf("%s\n", $0) > FILENAME;
		if(TEMP==FILENAME){}else{close(TEMP);}
		TEMP=FILENAME;
}