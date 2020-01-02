#include <iostream>
#include <winsock2.h>

#pragma comment(lib, "ws2_32.lib")

void ErrorHandler(char* message);

int main(int argc, char** argv) {
	
	WSADATA wsaData;
	SOCKET hSocket;
	SOCKADDR_IN ServerAddr;
	char Serverip[16],data[255];
	int ServerPort;
	
	printf("============ TCP - CLINET 를 시작합니다. ========== \n");
	printf("== : Server IP 를 입력해주세요 : ");
	scanf("%s",&Serverip);
	getchar();
	printf("== : Server Port 를 입력해주세요 : ");
	scanf("%d",&ServerPort);
	getchar();
	
	memset(&ServerAddr, 0, sizeof(ServerAddr));
	ServerAddr.sin_family=AF_INET;
	ServerAddr.sin_addr.s_addr=inet_addr(Serverip);
	ServerAddr.sin_port=htons(ServerPort);
	
	int result = WSAStartup(MAKEWORD(2,2),&wsaData);
	if (result != 0) {
		ErrorHandler("Winsock 세팅에 실패하였습니다.");
	}
	
		/*클라이언트 소켓 생성*/
	hSocket =  socket(PF_INET,SOCK_STREAM,0);
	if(hSocket == INVALID_SOCKET){
		ErrorHandler("클라이언트 소켓을 만들지 못했습니다.");	
	}
	
	/*서버로 연결을 시도합니다.*/
	if(connect(hSocket, (SOCKADDR*)&ServerAddr, sizeof(ServerAddr))==SOCKET_ERROR)
	ErrorHandler("서버에 연결할 수 없습니다.");
	
	printf("서버와 연결에 성공하였습니다. \n\n");

	while(true){
		printf("송신할 문자열을 입력하세요 : ");
		gets(data);
		send(hSocket,(char*)data,strlen(data),0);
	} 
	
	return 0;
}

void ErrorHandler(char* message){
	fputs(message, stderr);
	fputc('\n', stderr);
	exit(1);
}
