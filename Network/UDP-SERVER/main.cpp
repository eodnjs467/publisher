#include <iostream>
#include <winsock2.h>

#pragma comment(lib, "ws2_32.lib")

void ErrorHandler(char* message);

int main(int argc, char** argv) {
	
	WSADATA wsData;
	SOCKET hServer,hClient;
	SOCKADDR_IN ServerAddr,ClientAddr;
	int szClientAddr,clen; 
	char data[255];
	/* Win Socket 초기화*/
	
	printf("===== UDP SERVER 를 시작합니다 ====== \n");
	printf("Port : 4484 \n"); 
	
	int result = WSAStartup(MAKEWORD(2,2),&wsData);
	if (result != 0) {
		ErrorHandler("Winsock 세팅에 실패하였습니다.");
	}
	
	/*서버 소켓 생성*/
	hServer =  socket(PF_INET,SOCK_DGRAM,IPPROTO_UDP);
	if(hServer == INVALID_SOCKET){
		ErrorHandler("서버 소켓을 만들지 못했습니다.");	
	}
	
	 memset(&ServerAddr,0,sizeof(ServerAddr));
	 memset(&ClientAddr,0,sizeof(ClientAddr));
	 
	 ServerAddr.sin_family = AF_INET;
	 ServerAddr.sin_addr.s_addr = htonl(INADDR_ANY);
	 //ServerAddr.sin_port=htonl(atoi(argv[1])); //Command Line Param 형태 
	 ServerAddr.sin_port=htons(4484);  //Static 형태 
	 
	 /*서버 소켓 바인딩 작업*/
	 if(bind(hServer, (SOCKADDR*) &ServerAddr, sizeof(ServerAddr)) == SOCKET_ERROR)
		ErrorHandler("서버소켓 바인딩에 실패하였습니다.");
		
		
	if(hClient==INVALID_SOCKET)
		ErrorHandler("클라이언트 소켓 연결 실패");
		
		printf("클라이언트로부터 데이터 수신을 대기중입니다.\n\n"); 
		while(true){
			int size = 0;
			clen = sizeof(ClientAddr);
			size = recvfrom(hServer,(char*)data,sizeof(data),0,(SOCKADDR*)&ClientAddr,&clen);
			
			if(size <= 0 ){
			 printf("Recv from client : NULL size : %d \n",size);
			 continue;	
			 
			}else{
				data[size] = '\0';
				printf("Recv from client : %s size : %d \n",data,size);
			}
			
		}
	
	
	/* Win Socket 해제*/
	if (WSACleanup() == SOCKET_ERROR) {	
		ErrorHandler("Winsock 언로드 실패.");
	}
	
	return 0;
}

void ErrorHandler(char* message){
	fputs(message, stderr);
	fputc('\n', stderr);
	exit(1);
}
