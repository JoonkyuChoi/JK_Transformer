# gcc 프로젝트 빌드
[본문으로 이동](../README.md#gcc-빌드)<br/>


## 목차
- [0. 요구 사항](#0-요구-사항)
- [1. 구현 프로젝트들](#1-구현-프로젝트들)
- [2. 빌드](#2-빌드)
- [3. 사용법](#3-사용법)
- [4. 훈련(학습)](#4-훈련학습)
- [5. 추론(번역)](#5-추론번역)
- [6. 결과 파일 및 폴더 구성](#6-결과-파일-및-폴더-구성)


## 0. 요구 사항
gcc 환경에서 빌드하려면, 아래의 요구 조건을 충족해야 한다.
```
- [stdc++17] 이상
  > 컴파일 옵션
    -lstdc++
- [OpenMP] 지원
  > 컴파일 옵션
    -fopenmp
```


## 1. 구현 프로젝트들

```markdown
- C++
  1. JK-Transformer   : Transformer 콘솔 어플
    - 경로
      > 리소스  : /resources
      > 소스코드: /src
      > 빌드    : /build/gcc/JK-Transformer
      > 실행    : /bin_gcc
    - 예시
      > 훈련
        $ cd /bin_gcc
        $ ./train_tiny.sh
      > 추론
        $ cd /bin_gcc
        $ ./trans_huge.sh
```


## 2. 빌드

```bash
# JK-Transformer
  $ cd build/gcc/JK-Transformer
  $ ./build_all.sh
    ...
  $ cd ../../bin_gcc
  $ ls -al
```


## 3. 사용법
[콘솔 옵션](CommandOptions.md)


## 4. 훈련(학습)
* [10세대 훈련](Log.md#10세대-영한-기계번역-훈련-1)
* [10세대 미세조정](Log.md#10세대-영한-기계번역-미세조정-1)


## 5. 추론(번역)
* [영한 번역](Log.md#추론번역-1)


## 6. 결과 파일 및 폴더 구성
[JK_PyTools](https://github.com/JoonkyuChoi/JK_PyTools) 사용
```bash
# python 가상환경
$ conda env list
$ conda activate base
$ python -V

# JK_PyTools 경로에서, 구조 분석 수행
$ cd "$JK_PyTools경로$"
$ python PyFolderViewer/pyfolderviewer.py "$JK_Transformer경로$" --hide-size --hide-hidden --max-depth=5 --pass-dir=bin_gcc,build --deny-ext=obj,pdb,log,user,filters
# example
$ cd "D:\E\Study\GitHub-Local\repos\AI\Python\JK_PyTools"
$ python PyFolderViewer/pyfolderviewer.py "D:\E\Study\GitHub-Local\repos\AI\SLM\JK_Transformer" --hide-size --hide-hidden --max-depth=5 --pass-dir=bin_gcc,build --deny-ext=obj,pdb,log,user,filters
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


[본문으로 이동](../README.md#gcc-빌드)<br/>
