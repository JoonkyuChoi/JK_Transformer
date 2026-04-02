# Microsoft Visual C++ 프로젝트 설정 및 빌드
[본문으로 이동](../README.md#msvc-빌드)<br/>


## 목차
- [0. 요구 사항](#0-요구-사항)
- [1. 프로젝트 설정](#1-프로젝트-설정)
- [2. 빌드](#2-빌드)
- [3. 사용법](#3-사용법)
- [4. 훈련(학습)](#4-훈련학습)
- [5. 추론(번역)](#5-추론번역)
- [6. 결과 파일 및 폴더 구성](#6-결과-파일-및-폴더-구성)


## 0. 요구 사항
VC++ 환경에서 빌드하려면, 아래의 요구 조건을 충족해야 한다.
```
- Visual Studio 2019 이상
  > [OpenMP] 지원
    Visual Studio 2019 버전 16.9부터, LLVM OpenMP 런타임을 대상으로 하는 옵션도 추가되었으며, SIMD 기능을 활용할 수도 있다.
    - 프로젝트속성(Alt + F7) 변경
      C/C++ > 언어(Language) > OpenMP 지원을 "예(Yes)"로 설정
  > [stdc++17] 이상
    - auto 타입을 지원해야 한다.(stdc++11 이상)

- Windows용 Linux [함수/변수]들 직접 구현
  ※ 이미 소스코드에 포함시켜 구현되어 있다.
  > 함수
    getopt
  > 변수
    optarg

- Windows 병렬 처리 메모리 오류
  Linux와 Windows WSL2 콘솔 환경에서는 OpenMP 메모리 오류가 발생하지 않지만, Windows 환경에서는 메모리 오류가 발생한다.
  이 문제는 아래와 같이 설정하여, OpenMP가 단일 쓰레드로만 동작하도록 해야 한다.
  ※ 이미 소스코드에 포함시켜 구현되어 있다.
  > OpenMP 쓰레드 수량을 [1]로 설정
    #if defined(_MSC_VER)
    #define OMP_THREADS             1   // OpenMP 쓰레드 최대 수량 (Windows 환경에서는 메모리 문제가 발생하기에 1로 설정)
    #else
    #define OMP_THREADS             8   // OpenMP 쓰레드 최대 수량
    #endif
```


## 1. 프로젝트 설정
각 프로세스별 경로 및 환경 설정
```markdown
- C++
  1. JK-Transformer.exe
    > Settings
      pre-define  _CRT_SECURE_NO_WARNINGS
      inc-path    ..\..\..\src;
      req-libs    
      lib-path    
      out-path    ..\..\..\bin_msvc\$(Configuration)\
      mid-path    ..\..\..\bin_msvc\obj\$(Configuration)\$(ProjectName)\
    > Debugging
      Command     $(TargetPath)
      Arguments   -e 10 -o en -t ko -s tiny
      PWD         $(OutDir)
```


## 2. 빌드

```
1. [Visual C++ 2019] 이상에서, 아래 경로의 솔루션(JK-Transformer.sln) 파일을 열고, 빌드(F7) 수행
    > cd build\msvc2022
2. 아래 경로에, 결과파일(JK-Transformer.exe)이 생성되었는지 확인
    > cd bin_msvc\Debug
      cd bin_msvc\Release
3. 아래 경로로 이동하여, [학습/추론, 규모]별 배치파일을 실행시켜, 결과를 확인한다.
    > cd bin_msvc
    > train_tiny.bat
      trans_tiny.bat
```


## 3. 사용법
[콘솔 옵션](CommandOptions.md)


## 4. 훈련(학습)
* [10세대 훈련](Log.md#10세대-영한-기계번역-훈련)
* [10세대 미세조정](Log.md#10세대-영한-기계번역-미세조정)


## 5. 추론(번역)
* [영한 번역](Log.md#추론번역)


## 6. 결과 파일 및 폴더 구성
[JK_PyTools](https://github.com/JoonkyuChoi/JK_PyTools) 사용
```bash
# python 가상환경
$ conda env list
$ conda activate base
$ python -V

# JK_PyTools 경로에서, 구조 분석 수행
$ cd "$JK_PyTools경로$"
$ python PyFolderViewer/pyfolderviewer.py "$JK_Transformer경로$" --hide-size --hide-hidden --max-depth=5 --pass-dir=bin_msvc,build --deny-dir=obj --deny-ext=obj,pdb,log,user,filters
# example
$ cd "D:\E\Study\GitHub-Local\repos\AI\Python\JK_PyTools"
$ python PyFolderViewer/pyfolderviewer.py "D:\E\Study\GitHub-Local\repos\AI\SLM\JK_Transformer" --hide-size --hide-hidden --max-depth=5 --pass-dir=bin_msvc,build --deny-dir=obj --deny-ext=obj,pdb,log,user,filters
```
```
├── README.md # JK-Transformer
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
├── build/
│   ├── gcc/
│   │   └── JK-Transformer/
│   │       ├── build_all.sh
│   │       └── makefile
│   └── msvc2022/
│       ├── JK-Transformer.sln
│       └── projects/
│           ├── JK-Transformer.vcxproj
├── clean-all.bat
├── clean-bin.bat
```


[본문으로 이동](../README.md#msvc-빌드)<br/>
