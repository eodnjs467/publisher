
public class OpMethod {
	
	// ������!!
	
	// ����������	���ϵ�����Ÿ��	�޼����̸�(�Է��Ķ����)
	public int add(int a, int b){
		int result;
		result = a + b;
		return result;
	}
	
	public int minus(int a, int b){
		int result;
		result = a - b;
		return result;
	}
	
	public int gobHaGi(int a, int b){
		int result;
		result = a * b;
		return result;
	}
	
	public int naNueGi(int a, int b){
		int result;
		result = a / b;
		return result;
	}
	
	public int naMuJi(int a, int b){
		int result;
		result = a % b;
		return a%b;
	}
	
	public int getMax(int a, int b){
		
		int max = 0;
		
		if(a > b){
			max = a;
		}else{
			max = b;
		}
		
		return max;
	}

}
