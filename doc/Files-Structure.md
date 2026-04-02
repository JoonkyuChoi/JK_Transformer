# 폴더/파일 구조 분석

[본문으로 이동](../README.md#폴더파일-구성)<br/>


## 폴더/파일 구성
[JK_PyTools](https://github.com/JoonkyuChoi/JK_PyTools) 사용
```bash
# python 가상환경
$ conda env list
$ conda activate base
$ python -V

# JK_PyTools 경로에서, 구조 분석 수행
$ cd "$JK_PyTools경로$"
$ python PyFolderViewer/pyfolderviewer.py "$JK_Transformer경로$" --hide-size --hide-hidden --max-depth=5 --pass-dir=bin_gcc,bin_msvc,doc,resources --deny-ext=obj,pdb,log,user,filters
# example
$ cd "D:\E\Study\GitHub-Local\repos\AI\Python\JK_PyTools"
$ python PyFolderViewer/pyfolderviewer.py "D:\E\Study\GitHub-Local\repos\AI\SLM\JK_Transformer" --hide-size --hide-hidden --max-depth=5 --pass-dir=bin_gcc,bin_msvc,doc,resources --deny-ext=obj,pdb,log,user,filters
```
```
├── README.md # JK-Transformer
├── bin_gcc/
│   ├── JK-Transformer
│   ├── models/
│   │   └── save/
│   │       └── model_linux_en-ko_tiny_1834_10.bin
│   ├── test.txt
│   ├── train_big0.sh
│   ├── train_big1.sh
│   ├── train_big2.sh
│   ├── train_huge.sh
│   ├── train_midi.sh
│   ├── train_min0.sh
│   ├── train_min1.sh
│   ├── train_min2.sh
│   ├── train_tiny.sh
│   ├── trans_big0.sh
│   ├── trans_big1.sh
│   ├── trans_big2.sh
│   ├── trans_huge.sh
│   ├── trans_midi.sh
│   ├── trans_min0.sh
│   ├── trans_min1.sh
│   ├── trans_min2.sh
│   └── trans_tiny.sh
├── bin_msvc/
│   ├── Debug/
│   │   └── test.txt
│   ├── Release/
│   │   ├── JK-Transformer.exe
│   │   ├── models/
│   │   │   └── save/
│   │   │       ├── model_windo_en-ko_min0_3598_20.bin
│   │   │       ├── model_windo_en-ko_min0_3598_40.bin
│   │   │       ├── model_windo_en-ko_min1_5362_30.bin
│   │   │       ├── model_windo_en-ko_min2_7126_10.bin
│   │   │       ├── model_windo_en-ko_min2_7126_20.bin
│   │   │       ├── model_windo_en-ko_min2_7126_30.bin
│   │   │       ├── model_windo_en-ko_min2_7126_40.bin
│   │   │       ├── model_windo_en-ko_tiny_1834_10.bin
│   │   │       └── model_windo_en-ko_tiny_1834_30.bin
│   │   └── test.txt
│   ├── train_big0.bat
│   ├── train_big1.bat
│   ├── train_big2.bat
│   ├── train_huge.bat
│   ├── train_midi.bat
│   ├── train_min0.bat
│   ├── train_min1.bat
│   ├── train_min2.bat
│   ├── train_tiny.bat
│   ├── trans_big0.bat
│   ├── trans_big1.bat
│   ├── trans_big2.bat
│   ├── trans_huge.bat
│   ├── trans_midi.bat
│   ├── trans_min0.bat
│   ├── trans_min1.bat
│   ├── trans_min2.bat
│   └── trans_tiny.bat
├── clean-all.bat
├── clean-bin.bat
├── doc/
│   ├── Build_gcc.md # gcc 프로젝트 빌드
│   ├── Build_msvc.md # Microsoft Visual C++ 프로젝트 설정 및 빌드
│   ├── Files-Structure.md # 폴더/파일 구조 분석
│   ├── Log.md # JK-Transformer 로그
│   ├── WorkFlow.md # Architecture Diagrams
│   ├── design/
│   │   ├── FFN.svg
│   │   ├── architecture.png
│   │   └── attention.svg
│   └── images/
│       └── Transformer.png
├── resources/
│   ├── 2.trans/
│   │   ├── en-ja_big0.txt
│   │   ├── en-ja_big1.txt
│   │   ├── en-ja_big2.txt
│   │   ├── en-ja_huge.txt
│   │   ├── en-ja_midi.txt
│   │   ├── en-ja_min0.txt
│   │   ├── en-ja_min1.txt
│   │   ├── en-ja_min2.txt
│   │   ├── en-ja_tiny.txt
│   │   ├── en-ko_big0.txt
│   │   ├── en-ko_big1.txt
│   │   ├── en-ko_big2.txt
│   │   ├── en-ko_huge.txt
│   │   ├── en-ko_midi.txt
│   │   ├── en-ko_min0.txt
│   │   ├── en-ko_min1.txt
│   │   ├── en-ko_min2.txt
│   │   └── en-ko_tiny.txt
│   └── 3.vocab/
│       ├── en_big0.txt
│       ├── en_big1.txt
│       ├── en_big2.txt
│       ├── en_huge.txt
│       ├── en_midi.txt
│       ├── en_min0.txt
│       ├── en_min1.txt
│       ├── en_min2.txt
│       ├── en_tiny.txt
│       ├── ja_big0.txt
│       ├── ja_big1.txt
│       ├── ja_big2.txt
│       ├── ja_huge.txt
│       ├── ja_midi.txt
│       ├── ja_min0.txt
│       ├── ja_min1.txt
│       ├── ja_min2.txt
│       ├── ja_tiny.txt
│       ├── ko_big0.txt
│       ├── ko_big1.txt
│       ├── ko_big2.txt
│       ├── ko_huge.txt
│       ├── ko_midi.txt
│       ├── ko_min0.txt
│       ├── ko_min1.txt
│       ├── ko_min2.txt
│       └── ko_tiny.txt
```

[본문으로 이동](../README.md#폴더파일-구성)<br/>
