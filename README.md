cpuMul
======

CPUでの行列積演算

#使い方
Visual Studioのコマンドプロンプトで  
`nvcc -o cpuMul.exe cpuMul.cu`
を実行  
次に  
`cpuMul.exe`
を実行
#注意点
* 乱数生成が微妙
* 配列の大きさがint型なので大きい行列の積のは無理
* なによりもCUDAのclock()がちゃんと使えているかわからない
