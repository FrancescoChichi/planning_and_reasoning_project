(define (problem spqr-planning)
   (:domain spqr-task-planning)
	(:objects
	    youbot
	    slot1
	    slot2
	    slot3

	    WS04
	    PP01
	    CB02
	    SH02
	    SH01
	    WS09
	    WS03
	    WS07
	    WS06
	    WS12
	    WS08
	    WS10
	    WS01
	    CB02_1
	    CB02_2
	    CB02_3
	    CB02_6
	    CB02_5
	    CB02_10
	    CB02_15
	    CB02_20
	    CB02_7
	    CB02_14
	    CB02_21
	    CB02_28
	    CB02_35
	    CB02_9
	    CB02_18
	    CB02_27
	    PP01_15
	    PP01_30
	    PP01_45
	    PP01_17
	    PP01_34
	    PP01_51
	    PP01_19
	    PP01_21
	    PP01_23
	    PP01_46
	    PP01_25
	    SH01_29
	    SH01_58
	    SH01_87
	    SH01_31
	    SH01_62
	    SH01_33
	    SH01_66
	    SH01_99
	    SH01_35
	    SH01_70
	    SH01_105
	    SH01_140
	    SH01_175
	    SH01_37
	    SH01_74
	    SH01_111
	    SH01_148
	    SH01_185
	    SH01_39
	    SH01_78
	    SH01_41
	    SH02_43
	    SH02_86
	    SH02_45
	    SH02_90
	    SH02_47
	    SH02_49
	    SH02_51
	    SH02_53
	    WS01_57
	    WS01_59
	    WS01_61
	    WS01_122
	    WS01_63
	    WS01_126
	    WS01_189
	    WS01_252
	    WS01_65
	    WS01_130
	    WS01_195
	    WS01_67
	    WS01_134
	    WS01_201
	    WS01_69
	    WS01_138
	    WS03_71
	    WS03_73
	    WS03_75
	    WS03_77
	    WS03_154
	    WS03_231
	    WS03_79
	    WS03_158
	    WS03_81
	    WS03_162
	    WS03_243
	    WS03_83
	    WS03_166
	    WS03_249
	    WS04_85
	    WS04_170
	    WS04_87
	    WS04_89
	    WS04_91
	    WS04_182
	    WS04_93
	    WS04_186
	    WS04_279
	    WS04_372
	    WS04_95
	    WS04_190
	    WS04_285
	    WS04_380
	    WS04_97
	    WS04_194
	    WS04_291
	    WS06_99
	    WS06_198
	    WS06_297
	    WS06_396
	    WS06_101
	    WS06_202
	    WS06_303
	    WS06_103
	    WS06_206
	    WS06_105
	    WS06_107
	    WS06_111
	    WS06_222
	    WS06_333
	    WS07_113
	    WS07_226
	    WS07_339
	    WS07_452
	    WS07_565
	    WS07_115
	    WS07_117
	    WS07_234
	    WS07_351
	    WS07_468
	    WS07_585
	    WS07_119
	    WS07_121
	    WS07_242
	    WS07_363
	    WS07_484
	    WS07_123
	    WS07_246
	    WS07_369
	    WS07_125
	    WS07_250
	    WS07_129
	    WS07_131
	    WS07_262
	    WS07_133
	    WS07_266
	    WS07_399
	    WS07_532
	    WS07_665
	    WS07_798
	    WS07_135
	    WS07_270
	    WS07_405
	    WS07_540
	    WS07_675
	    WS07_810
	    WS07_945
	    WS08_141
	    WS08_282
	    WS08_423
	    WS08_143
	    WS08_147
	    WS08_294
	    WS08_149
	    WS08_298
	    WS08_447
	    WS08_596
	    WS08_745
	    WS09_151
	    WS09_302
	    WS09_453
	    WS09_153
	    WS09_306
	    WS09_459
	    WS09_612
	    WS09_765
	    WS09_155
	    WS09_310
	    WS09_465
	    WS09_157
	    WS09_314
	    WS09_159
	    WS09_318
	    WS09_477
	    WS09_636
	    WS09_161
	    WS09_322
	    WS10_167
	    WS10_334
	    WS10_169
	    WS10_338
	    WS10_507
	    WS10_171
	    WS10_342
	    WS10_513
	    WS10_173
	    WS10_346
	    WS10_519
	    WS10_692
	    WS10_175
	    WS10_350
	    WS10_525
	    WS10_700
	    WS10_875
	    WS10_1050
	    WS10_177
	    WS10_354
	    WS12_181
	    WS12_183
	    WS12_366
	    WS12_185
	    WS12_370
	    WS12_555
	    WS12_187
	    WS12_374
	    WS12_561
	    WS12_189
	    WS12_378
	    WS12_567
	    WS12_756
	    WS12_945
	    WS12_1134
	    WS12_1323
	    WS12_191
	    WS12_382
	    WS12_573
	    WS12_764
	    WS12_955

	    F20_20_G
	    S40_40_B
	    MOTOR1
	    MOTOR2
	    BEARING_BOX
	    R20
	    MOTOR
	    F20_20_B3
	    BEARING
	    F20_20_B

	)
	(:init
	    (ROBOT youbot)
	    (SLOT slot1)
	    (SLOT slot2)
	    (SLOT slot3)

	    (OBJ F20_20_G)
	    (OBJ S40_40_B)
	    (OBJ MOTOR1)
	    (OBJ MOTOR2)
	    (OBJ BEARING_BOX)
	    (OBJ R20)
	    (OBJ MOTOR)
	    (OBJ F20_20_B3)
	    (OBJ BEARING)
	    (OBJ F20_20_B)

	    (location WS04)
	    (location PP01)
	    (location CB02)
	    (location SH02)
	    (location SH01)
	    (location WS09)
	    (location WS03)
	    (location WS07)
	    (location WS06)
	    (location WS12)
	    (location WS08)
	    (location WS10)
	    (location WS01)
	    (location CB02_1)
	    (location CB02_2)
	    (location CB02_3)
	    (location CB02_6)
	    (location CB02_5)
	    (location CB02_10)
	    (location CB02_15)
	    (location CB02_20)
	    (location CB02_7)
	    (location CB02_14)
	    (location CB02_21)
	    (location CB02_28)
	    (location CB02_35)
	    (location CB02_9)
	    (location CB02_18)
	    (location CB02_27)
	    (location PP01_15)
	    (location PP01_30)
	    (location PP01_45)
	    (location PP01_17)
	    (location PP01_34)
	    (location PP01_51)
	    (location PP01_19)
	    (location PP01_21)
	    (location PP01_23)
	    (location PP01_46)
	    (location PP01_25)
	    (location SH01_29)
	    (location SH01_58)
	    (location SH01_87)
	    (location SH01_31)
	    (location SH01_62)
	    (location SH01_33)
	    (location SH01_66)
	    (location SH01_99)
	    (location SH01_35)
	    (location SH01_70)
	    (location SH01_105)
	    (location SH01_140)
	    (location SH01_175)
	    (location SH01_37)
	    (location SH01_74)
	    (location SH01_111)
	    (location SH01_148)
	    (location SH01_185)
	    (location SH01_39)
	    (location SH01_78)
	    (location SH01_41)
	    (location SH02_43)
	    (location SH02_86)
	    (location SH02_45)
	    (location SH02_90)
	    (location SH02_47)
	    (location SH02_49)
	    (location SH02_51)
	    (location SH02_53)
	    (location WS01_57)
	    (location WS01_59)
	    (location WS01_61)
	    (location WS01_122)
	    (location WS01_63)
	    (location WS01_126)
	    (location WS01_189)
	    (location WS01_252)
	    (location WS01_65)
	    (location WS01_130)
	    (location WS01_195)
	    (location WS01_67)
	    (location WS01_134)
	    (location WS01_201)
	    (location WS01_69)
	    (location WS01_138)
	    (location WS03_71)
	    (location WS03_73)
	    (location WS03_75)
	    (location WS03_77)
	    (location WS03_154)
	    (location WS03_231)
	    (location WS03_79)
	    (location WS03_158)
	    (location WS03_81)
	    (location WS03_162)
	    (location WS03_243)
	    (location WS03_83)
	    (location WS03_166)
	    (location WS03_249)
	    (location WS04_85)
	    (location WS04_170)
	    (location WS04_87)
	    (location WS04_89)
	    (location WS04_91)
	    (location WS04_182)
	    (location WS04_93)
	    (location WS04_186)
	    (location WS04_279)
	    (location WS04_372)
	    (location WS04_95)
	    (location WS04_190)
	    (location WS04_285)
	    (location WS04_380)
	    (location WS04_97)
	    (location WS04_194)
	    (location WS04_291)
	    (location WS06_99)
	    (location WS06_198)
	    (location WS06_297)
	    (location WS06_396)
	    (location WS06_101)
	    (location WS06_202)
	    (location WS06_303)
	    (location WS06_103)
	    (location WS06_206)
	    (location WS06_105)
	    (location WS06_107)
	    (location WS06_111)
	    (location WS06_222)
	    (location WS06_333)
	    (location WS07_113)
	    (location WS07_226)
	    (location WS07_339)
	    (location WS07_452)
	    (location WS07_565)
	    (location WS07_115)
	    (location WS07_117)
	    (location WS07_234)
	    (location WS07_351)
	    (location WS07_468)
	    (location WS07_585)
	    (location WS07_119)
	    (location WS07_121)
	    (location WS07_242)
	    (location WS07_363)
	    (location WS07_484)
	    (location WS07_123)
	    (location WS07_246)
	    (location WS07_369)
	    (location WS07_125)
	    (location WS07_250)
	    (location WS07_129)
	    (location WS07_131)
	    (location WS07_262)
	    (location WS07_133)
	    (location WS07_266)
	    (location WS07_399)
	    (location WS07_532)
	    (location WS07_665)
	    (location WS07_798)
	    (location WS07_135)
	    (location WS07_270)
	    (location WS07_405)
	    (location WS07_540)
	    (location WS07_675)
	    (location WS07_810)
	    (location WS07_945)
	    (location WS08_141)
	    (location WS08_282)
	    (location WS08_423)
	    (location WS08_143)
	    (location WS08_147)
	    (location WS08_294)
	    (location WS08_149)
	    (location WS08_298)
	    (location WS08_447)
	    (location WS08_596)
	    (location WS08_745)
	    (location WS09_151)
	    (location WS09_302)
	    (location WS09_453)
	    (location WS09_153)
	    (location WS09_306)
	    (location WS09_459)
	    (location WS09_612)
	    (location WS09_765)
	    (location WS09_155)
	    (location WS09_310)
	    (location WS09_465)
	    (location WS09_157)
	    (location WS09_314)
	    (location WS09_159)
	    (location WS09_318)
	    (location WS09_477)
	    (location WS09_636)
	    (location WS09_161)
	    (location WS09_322)
	    (location WS10_167)
	    (location WS10_334)
	    (location WS10_169)
	    (location WS10_338)
	    (location WS10_507)
	    (location WS10_171)
	    (location WS10_342)
	    (location WS10_513)
	    (location WS10_173)
	    (location WS10_346)
	    (location WS10_519)
	    (location WS10_692)
	    (location WS10_175)
	    (location WS10_350)
	    (location WS10_525)
	    (location WS10_700)
	    (location WS10_875)
	    (location WS10_1050)
	    (location WS10_177)
	    (location WS10_354)
	    (location WS12_181)
	    (location WS12_183)
	    (location WS12_366)
	    (location WS12_185)
	    (location WS12_370)
	    (location WS12_555)
	    (location WS12_187)
	    (location WS12_374)
	    (location WS12_561)
	    (location WS12_189)
	    (location WS12_378)
	    (location WS12_567)
	    (location WS12_756)
	    (location WS12_945)
	    (location WS12_1134)
	    (location WS12_1323)
	    (location WS12_191)
	    (location WS12_382)
	    (location WS12_573)
	    (location WS12_764)
	    (location WS12_955)

	    (edge CB02 CB02_1)
	    (edge CB02_1 CB02_2)
	    (edge CB02_2 CB02_3)
	    (edge CB02_3 PP01)
	    (edge CB02 CB02_3)
	    (edge CB02_3 CB02_6)
	    (edge CB02_6 SH02)
	    (edge CB02 CB02_5)
	    (edge CB02_5 CB02_10)
	    (edge CB02_10 CB02_15)
	    (edge CB02_15 CB02_20)
	    (edge CB02_20 WS06)
	    (edge CB02 CB02_7)
	    (edge CB02_7 CB02_14)
	    (edge CB02_14 CB02_21)
	    (edge CB02_21 CB02_28)
	    (edge CB02_28 CB02_35)
	    (edge CB02_35 WS07)
	    (edge CB02 CB02_9)
	    (edge CB02_9 CB02_18)
	    (edge CB02_18 CB02_27)
	    (edge CB02_27 WS09)
	    (edge CB02 WS10)
	    (edge CB02 WS12)
	    (edge PP01 PP01_15)
	    (edge PP01_15 PP01_30)
	    (edge PP01_30 PP01_45)
	    (edge PP01_45 CB02)
	    (edge PP01 PP01_17)
	    (edge PP01_17 PP01_34)
	    (edge PP01_34 PP01_51)
	    (edge PP01_51 SH01)
	    (edge PP01 PP01_19)
	    (edge PP01_19 WS01)
	    (edge PP01 PP01_21)
	    (edge PP01_21 WS03)
	    (edge PP01 PP01_23)
	    (edge PP01_23 PP01_46)
	    (edge PP01_46 WS04)
	    (edge PP01 PP01_25)
	    (edge PP01_25 WS07)
	    (edge PP01 WS08)
	    (edge SH01 SH01_29)
	    (edge SH01_29 SH01_58)
	    (edge SH01_58 SH01_87)
	    (edge SH01_87 PP01)
	    (edge SH01 SH01_31)
	    (edge SH01_31 SH01_62)
	    (edge SH01_62 SH02)
	    (edge SH01 SH01_33)
	    (edge SH01_33 SH01_66)
	    (edge SH01_66 SH01_99)
	    (edge SH01_99 WS06)
	    (edge SH01 SH01_35)
	    (edge SH01_35 SH01_70)
	    (edge SH01_70 SH01_105)
	    (edge SH01_105 SH01_140)
	    (edge SH01_140 SH01_175)
	    (edge SH01_175 WS07)
	    (edge SH01 SH01_37)
	    (edge SH01_37 SH01_74)
	    (edge SH01_74 SH01_111)
	    (edge SH01_111 SH01_148)
	    (edge SH01_148 SH01_185)
	    (edge SH01_185 WS09)
	    (edge SH01 SH01_39)
	    (edge SH01_39 SH01_78)
	    (edge SH01_78 WS10)
	    (edge SH01 SH01_41)
	    (edge SH01_41 WS12)
	    (edge SH02 SH02_43)
	    (edge SH02_43 SH02_86)
	    (edge SH02_86 CB02)
	    (edge SH02 SH02_45)
	    (edge SH02_45 SH02_90)
	    (edge SH02_90 SH01)
	    (edge SH02 SH02_47)
	    (edge SH02_47 WS01)
	    (edge SH02 SH02_49)
	    (edge SH02_49 WS03)
	    (edge SH02 SH02_51)
	    (edge SH02_51 WS04)
	    (edge SH02 SH02_53)
	    (edge SH02_53 WS07)
	    (edge SH02 WS08)
	    (edge WS01 WS01_57)
	    (edge WS01_57 PP01)
	    (edge WS01 WS01_59)
	    (edge WS01_59 SH02)
	    (edge WS01 WS01_61)
	    (edge WS01_61 WS01_122)
	    (edge WS01_122 WS06)
	    (edge WS01 WS01_63)
	    (edge WS01_63 WS01_126)
	    (edge WS01_126 WS01_189)
	    (edge WS01_189 WS01_252)
	    (edge WS01_252 WS07)
	    (edge WS01 WS01_65)
	    (edge WS01_65 WS01_130)
	    (edge WS01_130 WS01_195)
	    (edge WS01_195 WS09)
	    (edge WS01 WS01_67)
	    (edge WS01_67 WS01_134)
	    (edge WS01_134 WS01_201)
	    (edge WS01_201 WS10)
	    (edge WS01 WS01_69)
	    (edge WS01_69 WS01_138)
	    (edge WS01_138 WS12)
	    (edge WS03 WS03_71)
	    (edge WS03_71 PP01)
	    (edge WS03 WS03_73)
	    (edge WS03_73 SH02)
	    (edge WS03 WS03_75)
	    (edge WS03_75 WS06)
	    (edge WS03 WS03_77)
	    (edge WS03_77 WS03_154)
	    (edge WS03_154 WS03_231)
	    (edge WS03_231 WS07)
	    (edge WS03 WS03_79)
	    (edge WS03_79 WS03_158)
	    (edge WS03_158 WS09)
	    (edge WS03 WS03_81)
	    (edge WS03_81 WS03_162)
	    (edge WS03_162 WS03_243)
	    (edge WS03_243 WS10)
	    (edge WS03 WS03_83)
	    (edge WS03_83 WS03_166)
	    (edge WS03_166 WS03_249)
	    (edge WS03_249 WS12)
	    (edge WS04 WS04_85)
	    (edge WS04_85 WS04_170)
	    (edge WS04_170 PP01)
	    (edge WS04 WS04_87)
	    (edge WS04_87 SH02)
	    (edge WS04 WS04_89)
	    (edge WS04_89 WS06)
	    (edge WS04 WS04_91)
	    (edge WS04_91 WS04_182)
	    (edge WS04_182 WS07)
	    (edge WS04 WS04_93)
	    (edge WS04_93 WS04_186)
	    (edge WS04_186 WS04_279)
	    (edge WS04_279 WS04_372)
	    (edge WS04_372 WS09)
	    (edge WS04 WS04_95)
	    (edge WS04_95 WS04_190)
	    (edge WS04_190 WS04_285)
	    (edge WS04_285 WS04_380)
	    (edge WS04_380 WS10)
	    (edge WS04 WS04_97)
	    (edge WS04_97 WS04_194)
	    (edge WS04_194 WS04_291)
	    (edge WS04_291 WS12)
	    (edge WS06 WS06_99)
	    (edge WS06_99 WS06_198)
	    (edge WS06_198 WS06_297)
	    (edge WS06_297 WS06_396)
	    (edge WS06_396 CB02)
	    (edge WS06 WS06_101)
	    (edge WS06_101 WS06_202)
	    (edge WS06_202 WS06_303)
	    (edge WS06_303 SH01)
	    (edge WS06 WS06_103)
	    (edge WS06_103 WS06_206)
	    (edge WS06_206 WS01)
	    (edge WS06 WS06_105)
	    (edge WS06_105 WS03)
	    (edge WS06 WS06_107)
	    (edge WS06_107 WS04)
	    (edge WS06 WS07)
	    (edge WS06 WS06_111)
	    (edge WS06_111 WS06_222)
	    (edge WS06_222 WS06_333)
	    (edge WS06_333 WS08)
	    (edge WS07 WS07_113)
	    (edge WS07_113 WS07_226)
	    (edge WS07_226 WS07_339)
	    (edge WS07_339 WS07_452)
	    (edge WS07_452 WS07_565)
	    (edge WS07_565 CB02)
	    (edge WS07 WS07_115)
	    (edge WS07_115 PP01)
	    (edge WS07 WS07_117)
	    (edge WS07_117 WS07_234)
	    (edge WS07_234 WS07_351)
	    (edge WS07_351 WS07_468)
	    (edge WS07_468 WS07_585)
	    (edge WS07_585 SH01)
	    (edge WS07 WS07_119)
	    (edge WS07_119 SH02)
	    (edge WS07 WS07_121)
	    (edge WS07_121 WS07_242)
	    (edge WS07_242 WS07_363)
	    (edge WS07_363 WS07_484)
	    (edge WS07_484 WS01)
	    (edge WS07 WS07_123)
	    (edge WS07_123 WS07_246)
	    (edge WS07_246 WS07_369)
	    (edge WS07_369 WS03)
	    (edge WS07 WS07_125)
	    (edge WS07_125 WS07_250)
	    (edge WS07_250 WS04)
	    (edge WS07 WS06)
	    (edge WS07 WS07_129)
	    (edge WS07_129 WS08)
	    (edge WS07 WS07_131)
	    (edge WS07_131 WS07_262)
	    (edge WS07_262 WS09)
	    (edge WS07 WS07_133)
	    (edge WS07_133 WS07_266)
	    (edge WS07_266 WS07_399)
	    (edge WS07_399 WS07_532)
	    (edge WS07_532 WS07_665)
	    (edge WS07_665 WS07_798)
	    (edge WS07_798 WS10)
	    (edge WS07 WS07_135)
	    (edge WS07_135 WS07_270)
	    (edge WS07_270 WS07_405)
	    (edge WS07_405 WS07_540)
	    (edge WS07_540 WS07_675)
	    (edge WS07_675 WS07_810)
	    (edge WS07_810 WS07_945)
	    (edge WS07_945 WS12)
	    (edge WS08 PP01)
	    (edge WS08 SH02)
	    (edge WS08 WS08_141)
	    (edge WS08_141 WS08_282)
	    (edge WS08_282 WS08_423)
	    (edge WS08_423 WS06)
	    (edge WS08 WS08_143)
	    (edge WS08_143 WS07)
	    (edge WS08 WS08_147)
	    (edge WS08_147 WS08_294)
	    (edge WS08_294 WS10)
	    (edge WS08 WS08_149)
	    (edge WS08_149 WS08_298)
	    (edge WS08_298 WS08_447)
	    (edge WS08_447 WS08_596)
	    (edge WS08_596 WS08_745)
	    (edge WS08_745 WS12)
	    (edge WS09 WS09_151)
	    (edge WS09_151 WS09_302)
	    (edge WS09_302 WS09_453)
	    (edge WS09_453 CB02)
	    (edge WS09 WS09_153)
	    (edge WS09_153 WS09_306)
	    (edge WS09_306 WS09_459)
	    (edge WS09_459 WS09_612)
	    (edge WS09_612 WS09_765)
	    (edge WS09_765 SH01)
	    (edge WS09 WS09_155)
	    (edge WS09_155 WS09_310)
	    (edge WS09_310 WS09_465)
	    (edge WS09_465 WS01)
	    (edge WS09 WS09_157)
	    (edge WS09_157 WS09_314)
	    (edge WS09_314 WS03)
	    (edge WS09 WS09_159)
	    (edge WS09_159 WS09_318)
	    (edge WS09_318 WS09_477)
	    (edge WS09_477 WS09_636)
	    (edge WS09_636 WS04)
	    (edge WS09 WS09_161)
	    (edge WS09_161 WS09_322)
	    (edge WS09_322 WS07)
	    (edge WS10 CB02)
	    (edge WS10 WS10_167)
	    (edge WS10_167 WS10_334)
	    (edge WS10_334 SH01)
	    (edge WS10 WS10_169)
	    (edge WS10_169 WS10_338)
	    (edge WS10_338 WS10_507)
	    (edge WS10_507 WS01)
	    (edge WS10 WS10_171)
	    (edge WS10_171 WS10_342)
	    (edge WS10_342 WS10_513)
	    (edge WS10_513 WS03)
	    (edge WS10 WS10_173)
	    (edge WS10_173 WS10_346)
	    (edge WS10_346 WS10_519)
	    (edge WS10_519 WS10_692)
	    (edge WS10_692 WS04)
	    (edge WS10 WS10_175)
	    (edge WS10_175 WS10_350)
	    (edge WS10_350 WS10_525)
	    (edge WS10_525 WS10_700)
	    (edge WS10_700 WS10_875)
	    (edge WS10_875 WS10_1050)
	    (edge WS10_1050 WS07)
	    (edge WS10 WS10_177)
	    (edge WS10_177 WS10_354)
	    (edge WS10_354 WS08)
	    (edge WS12 CB02)
	    (edge WS12 WS12_181)
	    (edge WS12_181 SH01)
	    (edge WS12 WS12_183)
	    (edge WS12_183 WS12_366)
	    (edge WS12_366 WS01)
	    (edge WS12 WS12_185)
	    (edge WS12_185 WS12_370)
	    (edge WS12_370 WS12_555)
	    (edge WS12_555 WS03)
	    (edge WS12 WS12_187)
	    (edge WS12_187 WS12_374)
	    (edge WS12_374 WS12_561)
	    (edge WS12_561 WS04)
	    (edge WS12 WS12_189)
	    (edge WS12_189 WS12_378)
	    (edge WS12_378 WS12_567)
	    (edge WS12_567 WS12_756)
	    (edge WS12_756 WS12_945)
	    (edge WS12_945 WS12_1134)
	    (edge WS12_1134 WS12_1323)
	    (edge WS12_1323 WS07)
	    (edge WS12 WS12_191)
	    (edge WS12_191 WS12_382)
	    (edge WS12_382 WS12_573)
	    (edge WS12_573 WS12_764)
	    (edge WS12_764 WS12_955)
	    (edge WS12_955 WS08)

	    (emptySLOT slot1)
	    (emptySLOT slot2)
	    (emptySLOT slot3)

	    (robot-at-location youbot WS01)

	    (obj-at-location F20_20_G WS04)
	    (obj-at-location S40_40_B CB02)
	    (obj-at-location MOTOR1 SH01)
	    (obj-at-location MOTOR2 SH01)
	    (obj-at-location BEARING_BOX WS03)
	    (obj-at-location R20 WS07)
	    (obj-at-location MOTOR WS07)
	    (obj-at-location F20_20_B3 WS08)
	    (obj-at-location BEARING WS08)
	    (obj-at-location F20_20_B WS01)

	)
	(:goal
               (and 
          	    (obj-at-location F20_20_G PP01)
          	    (obj-at-location S40_40_B SH02)
          	    (obj-at-location MOTOR1 WS09)
          	    (obj-at-location MOTOR2 WS09)
          	    (obj-at-location BEARING_BOX WS09)
          	    (obj-at-location R20 WS06)
          	    (obj-at-location MOTOR WS12)
          	    (obj-at-location F20_20_B3 WS07)
          	    (obj-at-location BEARING WS10)
          	    (obj-at-location F20_20_B WS10)
               )
	)
)