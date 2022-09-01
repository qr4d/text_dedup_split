BEGIN{
	FS="|";
	CHONGFU=0;
	CHONGFA=0;
	SHULIANG=0;
	}
NR==FNR{
	YET[$1]=1;
}

NR>FNR{
	if(PRE[$1]=="1"){
		CHONGFU=CHONGFU+1;
		
	}else{
		if(YET[$1]=="1"){
			CHONGFA=CHONGFA+1;
			printf("%s\n",$1);
		}else{
			SHULIANG=SHULIANG+1;
		}
		PRE[$1]=1;
	}
}
