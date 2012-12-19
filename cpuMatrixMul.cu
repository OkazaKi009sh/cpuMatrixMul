#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#define MODULO 100

unsigned int seed = (unsigned)time(NULL);

void MatrixMultiplication(float* M, float* N, float* P, int Width) {
	for (int i = 0; i < Width; ++i) {
		for(int j = 0; j < Width; ++j) {
			float sum = 0;
			for(int k = 0; k < Width; ++k) {
				float a = M[i * Width + k];
				float b = N[k * Width + j];
				sum += a * b;
			}
		P[i * Width + j] = sum;	
		}
	}
}
void printMatrix(float* T, int Width) {
	for(int i=0; i < Width; ++i) {
		for(int j=0; j < Width; ++j) {
			printf("%f ",T[i * Width + j]);
		}
		printf("\n");
	}
}
void createRandomMatrix(float* T, int Width) {
	srand(seed++);
	float random = 5;
	for(int i=0; i < Width; ++i) {
		for(int j=0; j < Width; ++j) {
			random = rand() % MODULO + 1;
			T[i * Width + j] = random;
		}
	}
}
int main() {
	const int Width = 100;
	float M[Width*Width],N[Width*Width],P[Width*Width];
	unsigned int start = 0;
	unsigned int end = 0;
	
	createRandomMatrix(M,Width);
	printf("M is ...\n");
	//printMatrix(M,Width);
	createRandomMatrix(N,Width);
	printf("N is ...\n");
	//printMatrix(N,Width);
	start = clock();
	MatrixMultiplication(M,N,P,Width);
	end = clock();
	printf("P is ...\n");
	//printMatrix(P,Width);
	printf("time is %u",end - start);
	return 0;
}