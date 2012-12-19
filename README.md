cpuMatrixMul
======

CPUでの行列積演算

#使い方
Visual Studioのコマンドプロンプトで  
`nvcc -o cpuMatrixMul.exe cpuMatrixMul.cu`  
を実行  
次に  
`cpuMatrixMul.exe`  
を実行
#注意点
* 乱数生成が微妙
* 配列の大きさがint型なので大きい行列の積は無理
* なによりもCUDAのclock()がちゃんと使えているかわからない

#コードの説明
MODULOでランダムに生成する行列の要素の最大値を指定しています。100にしています。  
行列のサイズは100×100にしています。小さすぎると処理時間が0になってしまいます。
