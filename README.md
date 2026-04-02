# JK-Transformer

C++ Transformer Engine (Optimized for MSVC 2022 and gcc)

## 안내 사항 (Notice)
> **본 저장소는 개발자의 `Portfolio` 목적으로 운영되며, 현재 소스코드는 포함되어 있지 않습니다.**

본 프로젝트는 License 검토 및 정비 단계에 있어, 소스코드를 직접 공개하지 않습니다.</br>
대신에, 개발 과정에서의 설계 역량과 결과물을 증명하기 위해, 아래의 **2차적 저작물** 및 산출물을 공개합니다.

공개 범위:
* **데이터셋:** 어휘 사전(Vocabulary), 매칭 문장 사전, 추론용 테스트 문장
* **빌드 결과물:** 실행 가능한 바이너리 파일, 사전 훈련된 모델 파일(`.bin`)
* **문서화 자료:** 상세 설계 도면 및 학습 로그를 포함한 기술 문서

License 이슈가 해결되는 시점에 맞춰, 추후 코드 공개 여부를 결정할 예정입니다.</br>
양해 부탁드립니다.


## 개요
본 저장소는 Encoder-Decoder Transformer 모델 아키텍처를 기반으로, `영한/영일` 기계번역 모델을 C++ 언어로 구현한 것입니다.<br/>
`stdc++17` 이상을 지원하는 gcc 및 MSVC 개발 환경에서 빌드하여 실행시킬 수 있습니다.

아래의 도면은 본 프로젝트에 구현한, Legacy-Transformer를 상세하게 묘사한 아키텍처 입니다.<br/>
![JK-Transformer 구조](doc/design/architecture.png)


## 구현 정보

### 설계 도면
[상세 보기](doc/WorkFlow.md)

### 폴더/파일 구성
[상세 보기](doc/Files-Structure.md)


## 빠른 시작
본 저장소는 `Portfolio` 목적으로 공개한 것으로써, 빌드를 포함한 소스코드를 포함하고 있지 않습니다.</br>
단지, [훈련/추론] 실습용 파일들과, 참조용 문서 파일들이 포함되어 있습니다.

### gcc 빌드
[상세 보기](doc/Build_gcc.md)

### msvc 빌드
[상세 보기](doc/Build_msvc.md)

### 사용법
[콘솔 옵션](doc/CommandOptions.md)

### 상세 로그
* [Windows](doc/Log.md#windows)
* [Linux](doc/Log.md#linux)

---

## License & Disclaimer

### 1. 공개 목적 (Disclaimer)
* 본 저장소에 공개된 모든 자료는 개발자의 기술적 역량을 증명하기 위한, **Portfolio 용도**로만 제공됩니다.

### 2. 사용 조건 및 주의사항
* **무단 수정 및 재배포 금지:** 본 작업물의 무단 수정, 복제, 재배포 및 상업적 이용을 엄격히 금합니다.
* **이용 범위:** 공개된 산출물은 개인적인 **C++ Transformer 엔진 구조 학습** 및 **비영리적 연구** 목적으로만 참조 가능합니다.
* **책임 제한:** 본 소프트웨어 및 산출물을 사용함으로써 발생하는 어떠한 문제에 대해서도 저작권자는 책임을 지지 않습니다.
