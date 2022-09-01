BEGIN{
	TEMP="3去重后生成结果\\X_0.txt";
}
{
		NUMBER=int(FNR/99999);
		FILENAME="3去重后生成结果\\X_"NUMBER".txt";
		printf("%s\n", $0) > FILENAME;
		if(TEMP==FILENAME){}else{close(TEMP);}
		TEMP=FILENAME;
}