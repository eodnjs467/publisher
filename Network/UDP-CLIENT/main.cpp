#include <iostream>
#include <winsock2.h>

#pragma comment(lib, "ws2_32.lib")

void ErrorHandler(char* message);

int main(int argc, char** argv) {
	
	WSADATA wsaData;
	SOCKET hSocket;
	SOCKADDR_IN ServerAddr;
	char Serverip[16],data[255];
	int ServerPort,fsize;
	
	printf("============ UDP - CLINET �� �����մϴ�. ========== \n");
	printf("== : Server IP �� �Է����ּ��� : ");
	scanf("%s",&Serverip);
	getchar();
	printf("== : Server Port �� �Է����ּ��� : ");
	scanf("%d",&ServerPort);
	getchar();
	
	memset(&ServerAddr, 0, sizeof(ServerAddr));
	ServerAddr.sin_family=AF_INET;
	ServerAddr.sin_addr.s_addr=inet_addr(Serverip);
	ServerAddr.sin_port=htons(ServerPort);
	
	int result = WSAStartup(MAKEWORD(2,2),&wsaData);
	if (result != 0) {
		ErrorHandler("Winsock ���ÿ� �����Ͽ����ϴ�.");
	}
	
		/*Ŭ���̾�Ʈ ���� ����*/
	hSocket =  socket(PF_INET,SOCK_DGRAM,IPPROTO_UDP);
	if(hSocket == INVALID_SOCKET){
		ErrorHandler("Ŭ���̾�Ʈ ������ ������ ���߽��ϴ�.");	
	}
	
	while(true){
		printf("������ �۽��� ���ڿ��� �Է��ϼ��� : ");
		gets(data);
		sendto(hSocket,(char*)data,strlen(data),0,(struct sockaddr*) &ServerAddr, sizeof(ServerAddr));
	} 
	
	return 0;
}

void ErrorHandler(char* message){
	fputs(message, stderr);
	fputc('\n', stderr);
	exit(1);
}
