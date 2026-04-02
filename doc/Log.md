# JK-Transformer 로그

[본문으로 이동](../README.md#상세-로그)<br/>


## 목차
* [사용법](#사용법)
* [Windows](#windows)
  * [훈련(학습)](#훈련학습)
    * [10세대 `영한 기계번역` 훈련](#10세대-영한-기계번역-훈련)
    * [10세대 `영한 기계번역` 훈련2](#10세대-영한-기계번역-훈련2)
    * [10세대 `영한 기계번역` 미세조정](#10세대-영한-기계번역-미세조정)
  * [추론(번역)](#추론번역)
* [Linux](#linux)
  * [훈련(학습)](#훈련학습-1)
    * [10세대 `영한 기계번역` 훈련](#10세대-영한-기계번역-훈련-1)
    * [10세대 `영한 기계번역` 훈련2](#10세대-영한-기계번역-훈련2-1)
    * [10세대 `영한 기계번역` 미세조정](#10세대-영한-기계번역-미세조정-1)
  * [추론(번역)](#추론번역-1)


## 사용법
[콘솔 옵션](CommandOptions.md)


## Windows


### 훈련(학습)

#### 10세대 `영한 기계번역` 훈련
```
> cd bin_msvc/Release
> JK-Transformer.exe -e 10 -o en -t ko -v tiny
----------------------------------------
Configurations
----------------------------------------
OMP_THREADS  : 1
origin_lang  : en
transl_lang  : ko
vocab_scale  : tiny
corpus_scale : tiny
corpus_file  : ../../resources/2.trans/en-ko_tiny.txt
epochs       : 10
dropout      : 0.2
learningrate : 0.001
----------------------------------------
Loading...
----------------------------------------
data loaded
org_vocabs   : 882
trs_vocabs   : 882
att_hiddens  : 16
ffn_hiddens  : 4
multi_heads  : 4
blocks       : 2
warm up done
parameters   : 1834
req_grad     : all parameters = true
----------------------------------------
Training...
----------------------------------------
[300/300]saved model : ./models/model_windo_en-ko_tiny_1834_1.bin
[300/300]epoch 1 loss : 6.79572 emit_clip : 3
[300/300]epoch 2 loss : 6.70729 emit_clip : 3
[300/300]epoch 3 loss : 6.6283 emit_clip : 3
[300/300]epoch 4 loss : 6.54703 emit_clip : 3
[300/300]epoch 5 loss : 6.46921 emit_clip : 3
[300/300]epoch 6 loss : 6.39058 emit_clip : 3
[300/300]epoch 7 loss : 6.3112 emit_clip : 3
[300/300]epoch 8 loss : 6.22343 emit_clip : 3
[300/300]epoch 9 loss : 6.13903 emit_clip : 3
[300/300]saved model : ./models/save/model_windo_en-ko_tiny_1834_10.bin
[300/300]epoch 10 loss : 6.04143 emit_clip : 3
----------------------------------------
```

#### 10세대 `영한 기계번역` 훈련2
나머지 콘솔옵션들의 기본값은 `-o en -t ko -v tiny`로 적용된다.
미세조정이 아닌 훈련은, 가중치 초기값이 임의로 설정되기에, 훈련마다 손실율이 다르다는 것을 알 수 있다.
```
> cd bin_msvc/Release
> JK-Transformer.exe -e 10
----------------------------------------
Configurations
----------------------------------------
OMP_THREADS  : 1
origin_lang  : en
transl_lang  : ko
vocab_scale  : tiny
corpus_scale : tiny
corpus_file  : ../../resources/2.trans/en-ko_tiny.txt
epochs       : 10
dropout      : 0.2
learningrate : 0.001
----------------------------------------
Loading...
----------------------------------------
data loaded
org_vocabs   : 882
trs_vocabs   : 882
att_hiddens  : 16
ffn_hiddens  : 4
multi_heads  : 4
blocks       : 2
warm up done
parameters   : 1834
req_grad     : all parameters = true
----------------------------------------
Training...
----------------------------------------
[300/300]saved model : ./models/model_windo_en-ko_tiny_1834_1.bin
[300/300]epoch 1 loss : 6.75864 emit_clip : 3
[300/300]epoch 2 loss : 6.68373 emit_clip : 3
[300/300]epoch 3 loss : 6.59819 emit_clip : 3
[300/300]epoch 4 loss : 6.51663 emit_clip : 3
[300/300]epoch 5 loss : 6.4288 emit_clip : 3
[300/300]epoch 6 loss : 6.33463 emit_clip : 3
[300/300]epoch 7 loss : 6.23856 emit_clip : 3
[300/300]epoch 8 loss : 6.1392 emit_clip : 3
[300/300]epoch 9 loss : 6.05144 emit_clip : 3
[300/300]saved model : ./models/save/model_windo_en-ko_tiny_1834_10.bin
[300/300]epoch 10 loss : 5.95271 emit_clip : 3
----------------------------------------
```

#### 10세대 `영한 기계번역` 미세조정
사전 훈련된 모델을 지정하면, 그 모델을 로드하여 훈련(미세조정)을 수행하기에, 이전 훈련의 손실율에 이어서, 낮아지는 것을 확인할 수 있다.
```
> cd bin_msvc/Release
> JK-Transformer.exe -e 10 -m ./models/save/model_windo_en-ko_tiny_1834_10.bin -o en -t ko -v tiny
----------------------------------------
Configurations
----------------------------------------
OMP_THREADS  : 1
origin_lang  : en
transl_lang  : ko
vocab_scale  : tiny
corpus_scale : tiny
corpus_file  : ../../resources/2.trans/en-ko_tiny.txt
model_file   : ./models/save/model_windo_en-ko_tiny_1834_10.bin
epochs       : 10
dropout      : 0.2
learningrate : 0.001
----------------------------------------
Loading...
----------------------------------------
data loaded
org_vocabs   : 882
trs_vocabs   : 882
att_hiddens  : 16
ffn_hiddens  : 4
multi_heads  : 4
blocks       : 2
warm up done
parameters   : 1834
req_grad     : all parameters = true
loading model: ./models/save/model_windo_en-ko_tiny_1834_10.bin
loaded a model
----------------------------------------
Training...
----------------------------------------
[300/300]saved model : ./models/model_windo_en-ko_tiny_1834_1.bin
[300/300]epoch 1 loss : 5.84997 emit_clip : 3
[300/300]epoch 2 loss : 5.75479 emit_clip : 3
[300/300]epoch 3 loss : 5.64986 emit_clip : 3
[300/300]epoch 4 loss : 5.55577 emit_clip : 3
[300/300]epoch 5 loss : 5.45085 emit_clip : 3
[300/300]epoch 6 loss : 5.34561 emit_clip : 3
[300/300]epoch 7 loss : 5.24181 emit_clip : 3
[300/300]epoch 8 loss : 5.13067 emit_clip : 3
[300/300]epoch 9 loss : 5.0246 emit_clip : 3
[300/300]saved model : ./models/save/model_windo_en-ko_tiny_1834_10.bin
[300/300]epoch 10 loss : 4.91915 emit_clip : 3
```


### 추론(번역)
추론은 반드시, `-e 0`으로 설정해야만 한다.</br>
국문(한글)은 터미널의 인코딩 문자셋을 UTF-8로 설정해야 확인할 수 있다.
```
> chcp 65001
> cd bin_msvc/Release
> JK-Transformer.exe -e 0 -m ./models/save/model_windo_en-ko_min2_7126_40.bin -o en -t ko -v min2
----------------------------------------
Configurations
----------------------------------------
OMP_THREADS  : 1
origin_lang  : en
transl_lang  : ko
vocab_scale  : min2
model_file   : ./models/save/model_windo_en-ko_min2_7126_40.bin
epochs       : 0
dropout      : 0.2
learningrate : 0.001
----------------------------------------
Loading...
----------------------------------------
data loaded
org_vocabs   : 3528
trs_vocabs   : 3528
att_hiddens  : 96
ffn_hiddens  : 24
multi_heads  : 4
blocks       : 2
warm up done
parameters   : 7126
req_grad     : all parameters = true
loading model: ./models/save/model_windo_en-ko_min2_7126_40.bin
loaded a model
----------------------------------------
Serving...
----------------------------------------
we won . <eos>
translate res : <bos> 우리는 <unk> <unk> . <eos>
call me . <eos>
translate res : <bos> 전화해 <unk> 전화해 . <eos>
drop it ! <eos>
translate res : <bos> <unk> ! <eos>
go away ! <eos>
translate res : <bos> <unk> ! <eos>
help me ! <eos>
translate res : <bos> <unk> ! <eos>
i know . <eos>
translate res : <bos> 나는 알고 <unk> <unk> . <eos>
show me . <eos>
translate res : <bos> <unk> <unk> . <eos>
ask them . <eos>
translate res : <bos> <unk> <unk> <unk> . <eos>
hurry up . <eos>
translate res : <bos> 서둘러 <unk> . <eos>
i saw it . <eos>
translate res : <bos> 나는 <unk> 보았다 . <eos>
----------------------------------------
```


[본문으로 이동](../README.md#상세-로그)<br/>


## Linux
본인의 개발환경은 Windows 시스템이라서, WSL2 환경의 `Ubuntu 22.04.5 LTS`에서 수행시켰습니다.</br>
WSL2 환경은 Windows 시스템보다, 처리 속도가 느려서 `tiny` 규모로 실행하였습니다.

### 훈련(학습)

#### 10세대 `영한 기계번역` 훈련
```
> cd bin_gcc
> ./JK-Transformer -e 10 -o en -t ko -v tiny
----------------------------------------
Configurations
----------------------------------------
OMP_THREADS  : 8
origin_lang  : en
transl_lang  : ko
vocab_scale  : tiny
corpus_scale : tiny
corpus_file  : ../resources/2.trans/en-ko_tiny.txt
epochs       : 10
dropout      : 0.2
learningrate : 0.001
----------------------------------------
Loading...
----------------------------------------
data loaded
org_vocabs   : 882
trs_vocabs   : 882
att_hiddens  : 16
ffn_hiddens  : 4
multi_heads  : 4
blocks       : 2
warm up done
parameters   : 1834
req_grad     : all parameters = true
----------------------------------------
Training...
----------------------------------------
[300/300]saved model : ./models/model_linux_en-ko_tiny_1834_1.bin
[300/300]epoch 1 loss : 6.78263 emit_clip : 3
[300/300]epoch 2 loss : 6.66596 emit_clip : 3
[300/300]epoch 3 loss : 6.55947 emit_clip : 3
[300/300]epoch 4 loss : 6.44416 emit_clip : 3
[300/300]epoch 5 loss : 6.34217 emit_clip : 3
[300/300]epoch 6 loss : 6.24652 emit_clip : 3
[300/300]epoch 7 loss : 6.14741 emit_clip : 3
[300/300]epoch 8 loss : 6.05389 emit_clip : 3
[300/300]epoch 9 loss : 5.95801 emit_clip : 3
[300/300]saved model : ./models/save/model_linux_en-ko_tiny_1834_10.bin
[300/300]epoch 10 loss : 5.85929 emit_clip : 3
----------------------------------------
```

#### 10세대 `영한 기계번역` 훈련2
나머지 콘솔옵션들의 기본값은 `-o en -t ko -v tiny`로 적용된다.
미세조정이 아닌 훈련은, 가중치 초기값이 임의로 설정되기에, 훈련마다 손실율이 다르다는 것을 알 수 있다.
```
> cd bin_gcc
> ./JK-Transformer -e 10
----------------------------------------
Configurations
----------------------------------------
OMP_THREADS  : 8
origin_lang  : en
transl_lang  : ko
vocab_scale  : tiny
corpus_scale : tiny
corpus_file  : ../resources/2.trans/en-ko_tiny.txt
epochs       : 10
dropout      : 0.2
learningrate : 0.001
----------------------------------------
Loading...
----------------------------------------
data loaded
org_vocabs   : 882
trs_vocabs   : 882
att_hiddens  : 16
ffn_hiddens  : 4
multi_heads  : 4
blocks       : 2
warm up done
parameters   : 1834
req_grad     : all parameters = true
----------------------------------------
Training...
----------------------------------------
[300/300]saved model : ./models/model_linux_en-ko_tiny_1834_1.bin
[300/300]epoch 1 loss : 6.69385 emit_clip : 3
[300/300]epoch 2 loss : 6.59786 emit_clip : 3
[300/300]epoch 3 loss : 6.49844 emit_clip : 3
[300/300]epoch 4 loss : 6.40249 emit_clip : 3
[300/300]epoch 5 loss : 6.31076 emit_clip : 3
[300/300]epoch 6 loss : 6.22057 emit_clip : 3
[300/300]epoch 7 loss : 6.131 emit_clip : 3
[300/300]epoch 8 loss : 6.046 emit_clip : 3
[300/300]epoch 9 loss : 5.95762 emit_clip : 3
[300/300]saved model : ./models/save/model_linux_en-ko_tiny_1834_10.bin
[300/300]epoch 10 loss : 5.86598 emit_clip : 3
----------------------------------------
```

#### 10세대 `영한 기계번역` 미세조정
사전 훈련된 모델을 지정하면, 그 모델을 로드하여 훈련(미세조정)을 수행하기에, 이전 훈련의 손실율에 이어서, 낮아지는 것을 확인할 수 있다.
```
> cd bin_gcc
> ./JK-Transformer -e 10 -m ./models/save/model_linux_en-ko_tiny_1834_10.bin -o en -t ko -v tiny
----------------------------------------
Configurations
----------------------------------------
OMP_THREADS  : 8
origin_lang  : en
transl_lang  : ko
vocab_scale  : tiny
corpus_scale : tiny
corpus_file  : ../resources/2.trans/en-ko_tiny.txt
model_file   : ./models/save/model_linux_en-ko_tiny_1834_10.bin
epochs       : 10
dropout      : 0.2
learningrate : 0.001
----------------------------------------
Loading...
----------------------------------------
data loaded
org_vocabs   : 882
trs_vocabs   : 882
att_hiddens  : 16
ffn_hiddens  : 4
multi_heads  : 4
blocks       : 2
warm up done
parameters   : 1834
req_grad     : all parameters = true
loading model: ./models/save/model_linux_en-ko_tiny_1834_10.bin
loaded a model
----------------------------------------
Training...
----------------------------------------
[300/300]saved model : ./models/model_linux_en-ko_tiny_1834_1.bin
[300/300]epoch 1 loss : 5.771 emit_clip : 3
[300/300]epoch 2 loss : 5.67857 emit_clip : 3
[300/300]epoch 3 loss : 5.58751 emit_clip : 3
[300/300]epoch 4 loss : 5.49506 emit_clip : 3
[300/300]epoch 5 loss : 5.40342 emit_clip : 3
[300/300]epoch 6 loss : 5.30782 emit_clip : 3
[300/300]epoch 7 loss : 5.20901 emit_clip : 3
[300/300]epoch 8 loss : 5.11768 emit_clip : 3
[300/300]epoch 9 loss : 5.01495 emit_clip : 3
[300/300]saved model : ./models/save/model_linux_en-ko_tiny_1834_10.bin
[300/300]epoch 10 loss : 4.91624 emit_clip : 3
----------------------------------------
```


### 추론(번역)
추론은 반드시, `-e 0`으로 설정해야만 한다.</br>
국문(한글)은 터미널의 인코딩 문자셋을 UTF-8로 설정해야 확인할 수 있다.</br>
> Notes:</br>
  > WSL2 환경에서, min2 규모 이상에서 훈련된 모델이 없습니다.</br>
  > 손실율이 높아서, 제대로된 출력을 확인하지 못했습니다.
```
> chcp 65001
> cd bin_gcc
> ./JK-Transformer -e 0 -m ./models/save/model_linux_en-ko_tiny_1834_10.bin -o en -t ko -v tiny
----------------------------------------
Configurations
----------------------------------------
OMP_THREADS  : 8
origin_lang  : en
transl_lang  : ko
vocab_scale  : tiny
model_file   : ./models/save/model_linux_en-ko_tiny_1834_10.bin
epochs       : 0
dropout      : 0.2
learningrate : 0.001
----------------------------------------
Loading...
----------------------------------------
data loaded
org_vocabs   : 882
trs_vocabs   : 882
att_hiddens  : 16
ffn_hiddens  : 4
multi_heads  : 4
blocks       : 2
warm up done
parameters   : 1834
req_grad     : all parameters = true
loading model: ./models/save/model_linux_en-ko_tiny_1834_10.bin
loaded a model
----------------------------------------
Serving...
----------------------------------------
go now . <eos>
translate res : <bos> <eos>
i try . <eos>
translate res : <bos> <eos>
cheers ! <eos>
translate res : <bos> <eos>
get up . <eos>
translate res : <bos> <eos>
hug me . <eos>
translate res : <bos> <eos>
i know . <eos>
translate res : <bos> <eos>
no way ! <eos>
translate res : <bos> <eos>
be nice . <eos>
translate res : <bos> <eos>
i jumped . <eos>
translate res : <bos> <eos>
<unk> ! <eos>
translate res : <bos> <eos>
----------------------------------------
```


[본문으로 이동](../README.md#상세-로그)<br/>
