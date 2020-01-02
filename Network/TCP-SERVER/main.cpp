#include <iostream>
#include <winsock2.h>

#pragma comment(lib, "ws2_32.lib")

void ErrorHandler(char* message);

int main(int argc, char** argv) {
	
	WSADATA wsData;
	SOCKET hServer,hClient;
	SOCKADDR_IN ServerAddr,ClientAddr;
	int szClientAddr; 
	char data[255];
	/* Win Socket �ʱ�ȭ*/
	
	printf("===== TCP SERVER �� �����մϴ� ====== \n");
	printf("Port : 4484 \n"); 
	
	int result = WSAStartup(MAKEWORD(2,2),&wsData);
	if (result != 0) {
		ErrorHandler("Winsock ���ÿ� �����Ͽ����ϴ�.");
	}
	
	/*���� ���� ����*/
	hServer =  socket(PF_INET,SOCK_STREAM,0);
	if(hServer == INVALID_SOCKET){
		ErrorHandler("���� ������ ������ ���߽��ϴ�.");	
	}
	
	 memset(&ServerAddr,0,sizeof(ServerAddr));
	 
	 ServerAddr.sin_family = AF_INET;
	 ServerAddr.sin_addr.s_addr = htonl(INADDR_ANY);
	 //ServerAddr.sin_port=htonl(atoi(argv[1])); //Command Line Param ���� 
	 ServerAddr.sin_port=htons(4484);  //Static ���� 
	 
	 /*���� ���� ���ε� �۾�*/
	 if(bind(hServer, (SOCKADDR*) &ServerAddr, sizeof(ServerAddr)) == SOCKET_ERROR)
		ErrorHandler("�������� ���ε��� �����Ͽ����ϴ�.");
		
	 if(listen(hServer,5) ==SOCKET_ERROR )
	 	ErrorHandler("���� ���� Listen �� �����Ͽ����ϴ�.");
	 
	 /*Ŭ���̾�Ʈ�� ������ ��ٸ��ϴ�.*/	
	 	szClientAddr=sizeof(ClientAddr);
	 	printf("Ŭ���̾�Ʈ�� ������ ��ٸ�����...\n");
		hClient = accept(hServer, (SOCKADDR*)&ClientAddr, &szClientAddr);
		
	if(hClient==INVALID_SOCKET)
		ErrorHandler("Ŭ���̾�Ʈ ���� ���� ����");
		
		printf("Ŭ���̾�Ʈ�� ����Ǿ����ϴ�.\n"); 
		while(true){
			int size = 0;
			size = recv(hClient,data,sizeof(data)-1,0);
			
			if(size <= 0 ){
				printf("Recv from client : NULL size : %d \n",size);
				printf("Ŭ���̾�Ʈ�κ��� ������ �����մϴ�.");
			 	break;	
			}else{
				data[size] = '\0';
				printf("Recv from client : %s size : %d \n",data,size);
			}
			
		}
	
	
	/* Win Socket ����*/
	if (WSACleanup() == SOCKET_ERROR) {	
		ErrorHandler("Winsock ��ε� ����.");
	}
	
	return 0;
}

void ErrorHandler(char* message){
	fputs(message, stderr);
	fputc('\n', stderr);
	exit(1);
}
