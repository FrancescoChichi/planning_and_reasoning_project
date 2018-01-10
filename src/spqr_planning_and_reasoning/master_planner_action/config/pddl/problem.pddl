(define (problem spqr-planning)
   (:domain spqr-task-planning)
	(:objects
	    youbot
	    slot1
	    slot2
	    slot3

	    slot2
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
	    WS06_85
	    WS06_170
	    WS06_255
	    WS06_340
	    WS06_87
	    WS06_174
	    WS06_261
	    WS06_89
	    WS06_178
	    WS06_91
	    WS06_95
	    WS06_190
	    WS06_285
	    WS07_99
	    WS07_198
	    WS07_297
	    WS07_396
	    WS07_495
	    WS07_101
	    WS07_103
	    WS07_206
	    WS07_309
	    WS07_412
	    WS07_515
	    WS07_105
	    WS07_107
	    WS07_214
	    WS07_321
	    WS07_428
	    WS07_109
	    WS07_218
	    WS07_327
	    WS07_113
	    WS07_115
	    WS07_230
	    WS07_117
	    WS07_234
	    WS07_351
	    WS07_468
	    WS07_585
	    WS07_702
	    WS07_119
	    WS07_238
	    WS07_357
	    WS07_476
	    WS07_595
	    WS07_714
	    WS07_833
	    WS08_127
	    WS08_254
	    WS08_381
	    WS08_129
	    WS08_133
	    WS08_266
	    WS08_135
	    WS08_270
	    WS08_405
	    WS08_540
	    WS08_675
	    WS09_137
	    WS09_274
	    WS09_411
	    WS09_139
	    WS09_278
	    WS09_417
	    WS09_556
	    WS09_695
	    WS09_141
	    WS09_282
	    WS09_423
	    WS09_143
	    WS09_286
	    WS09_145
	    WS09_290
	    WS10_153
	    WS10_306
	    WS10_155
	    WS10_310
	    WS10_465
	    WS10_157
	    WS10_314
	    WS10_471
	    WS10_159
	    WS10_318
	    WS10_477
	    WS10_636
	    WS10_795
	    WS10_954
	    WS10_161
	    WS10_322
	    WS12_167
	    WS12_169
	    WS12_338
	    WS12_171
	    WS12_342
	    WS12_513
	    WS12_173
	    WS12_346
	    WS12_519
	    WS12_692
	    WS12_865
	    WS12_1038
	    WS12_1211
	    WS12_175
	    WS12_350
	    WS12_525
	    WS12_700
	    WS12_875

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

	    (location slot2)
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
	    (location WS06_85)
	    (location WS06_170)
	    (location WS06_255)
	    (location WS06_340)
	    (location WS06_87)
	    (location WS06_174)
	    (location WS06_261)
	    (location WS06_89)
	    (location WS06_178)
	    (location WS06_91)
	    (location WS06_95)
	    (location WS06_190)
	    (location WS06_285)
	    (location WS07_99)
	    (location WS07_198)
	    (location WS07_297)
	    (location WS07_396)
	    (location WS07_495)
	    (location WS07_101)
	    (location WS07_103)
	    (location WS07_206)
	    (location WS07_309)
	    (location WS07_412)
	    (location WS07_515)
	    (location WS07_105)
	    (location WS07_107)
	    (location WS07_214)
	    (location WS07_321)
	    (location WS07_428)
	    (location WS07_109)
	    (location WS07_218)
	    (location WS07_327)
	    (location WS07_113)
	    (location WS07_115)
	    (location WS07_230)
	    (location WS07_117)
	    (location WS07_234)
	    (location WS07_351)
	    (location WS07_468)
	    (location WS07_585)
	    (location WS07_702)
	    (location WS07_119)
	    (location WS07_238)
	    (location WS07_357)
	    (location WS07_476)
	    (location WS07_595)
	    (location WS07_714)
	    (location WS07_833)
	    (location WS08_127)
	    (location WS08_254)
	    (location WS08_381)
	    (location WS08_129)
	    (location WS08_133)
	    (location WS08_266)
	    (location WS08_135)
	    (location WS08_270)
	    (location WS08_405)
	    (location WS08_540)
	    (location WS08_675)
	    (location WS09_137)
	    (location WS09_274)
	    (location WS09_411)
	    (location WS09_139)
	    (location WS09_278)
	    (location WS09_417)
	    (location WS09_556)
	    (location WS09_695)
	    (location WS09_141)
	    (location WS09_282)
	    (location WS09_423)
	    (location WS09_143)
	    (location WS09_286)
	    (location WS09_145)
	    (location WS09_290)
	    (location WS10_153)
	    (location WS10_306)
	    (location WS10_155)
	    (location WS10_310)
	    (location WS10_465)
	    (location WS10_157)
	    (location WS10_314)
	    (location WS10_471)
	    (location WS10_159)
	    (location WS10_318)
	    (location WS10_477)
	    (location WS10_636)
	    (location WS10_795)
	    (location WS10_954)
	    (location WS10_161)
	    (location WS10_322)
	    (location WS12_167)
	    (location WS12_169)
	    (location WS12_338)
	    (location WS12_171)
	    (location WS12_342)
	    (location WS12_513)
	    (location WS12_173)
	    (location WS12_346)
	    (location WS12_519)
	    (location WS12_692)
	    (location WS12_865)
	    (location WS12_1038)
	    (location WS12_1211)
	    (location WS12_175)
	    (location WS12_350)
	    (location WS12_525)
	    (location WS12_700)
	    (location WS12_875)

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
	    (edge PP01_23 WS07)
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
	    (edge SH02_51 WS07)
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
	    (edge WS06 WS06_85)
	    (edge WS06_85 WS06_170)
	    (edge WS06_170 WS06_255)
	    (edge WS06_255 WS06_340)
	    (edge WS06_340 CB02)
	    (edge WS06 WS06_87)
	    (edge WS06_87 WS06_174)
	    (edge WS06_174 WS06_261)
	    (edge WS06_261 SH01)
	    (edge WS06 WS06_89)
	    (edge WS06_89 WS06_178)
	    (edge WS06_178 WS01)
	    (edge WS06 WS06_91)
	    (edge WS06_91 WS03)
	    (edge WS06 WS07)
	    (edge WS06 WS06_95)
	    (edge WS06_95 WS06_190)
	    (edge WS06_190 WS06_285)
	    (edge WS06_285 WS08)
	    (edge WS07 WS07_99)
	    (edge WS07_99 WS07_198)
	    (edge WS07_198 WS07_297)
	    (edge WS07_297 WS07_396)
	    (edge WS07_396 WS07_495)
	    (edge WS07_495 CB02)
	    (edge WS07 WS07_101)
	    (edge WS07_101 PP01)
	    (edge WS07 WS07_103)
	    (edge WS07_103 WS07_206)
	    (edge WS07_206 WS07_309)
	    (edge WS07_309 WS07_412)
	    (edge WS07_412 WS07_515)
	    (edge WS07_515 SH01)
	    (edge WS07 WS07_105)
	    (edge WS07_105 SH02)
	    (edge WS07 WS07_107)
	    (edge WS07_107 WS07_214)
	    (edge WS07_214 WS07_321)
	    (edge WS07_321 WS07_428)
	    (edge WS07_428 WS01)
	    (edge WS07 WS07_109)
	    (edge WS07_109 WS07_218)
	    (edge WS07_218 WS07_327)
	    (edge WS07_327 WS03)
	    (edge WS07 WS06)
	    (edge WS07 WS07_113)
	    (edge WS07_113 WS08)
	    (edge WS07 WS07_115)
	    (edge WS07_115 WS07_230)
	    (edge WS07_230 WS09)
	    (edge WS07 WS07_117)
	    (edge WS07_117 WS07_234)
	    (edge WS07_234 WS07_351)
	    (edge WS07_351 WS07_468)
	    (edge WS07_468 WS07_585)
	    (edge WS07_585 WS07_702)
	    (edge WS07_702 WS10)
	    (edge WS07 WS07_119)
	    (edge WS07_119 WS07_238)
	    (edge WS07_238 WS07_357)
	    (edge WS07_357 WS07_476)
	    (edge WS07_476 WS07_595)
	    (edge WS07_595 WS07_714)
	    (edge WS07_714 WS07_833)
	    (edge WS07_833 WS12)
	    (edge WS08 PP01)
	    (edge WS08 SH02)
	    (edge WS08 WS08_127)
	    (edge WS08_127 WS08_254)
	    (edge WS08_254 WS08_381)
	    (edge WS08_381 WS06)
	    (edge WS08 WS08_129)
	    (edge WS08_129 WS07)
	    (edge WS08 WS08_133)
	    (edge WS08_133 WS08_266)
	    (edge WS08_266 WS10)
	    (edge WS08 WS08_135)
	    (edge WS08_135 WS08_270)
	    (edge WS08_270 WS08_405)
	    (edge WS08_405 WS08_540)
	    (edge WS08_540 WS08_675)
	    (edge WS08_675 WS12)
	    (edge WS09 WS09_137)
	    (edge WS09_137 WS09_274)
	    (edge WS09_274 WS09_411)
	    (edge WS09_411 CB02)
	    (edge WS09 WS09_139)
	    (edge WS09_139 WS09_278)
	    (edge WS09_278 WS09_417)
	    (edge WS09_417 WS09_556)
	    (edge WS09_556 WS09_695)
	    (edge WS09_695 SH01)
	    (edge WS09 WS09_141)
	    (edge WS09_141 WS09_282)
	    (edge WS09_282 WS09_423)
	    (edge WS09_423 WS01)
	    (edge WS09 WS09_143)
	    (edge WS09_143 WS09_286)
	    (edge WS09_286 WS03)
	    (edge WS09 WS09_145)
	    (edge WS09_145 WS09_290)
	    (edge WS09_290 WS07)
	    (edge WS10 CB02)
	    (edge WS10 WS10_153)
	    (edge WS10_153 WS10_306)
	    (edge WS10_306 SH01)
	    (edge WS10 WS10_155)
	    (edge WS10_155 WS10_310)
	    (edge WS10_310 WS10_465)
	    (edge WS10_465 WS01)
	    (edge WS10 WS10_157)
	    (edge WS10_157 WS10_314)
	    (edge WS10_314 WS10_471)
	    (edge WS10_471 WS03)
	    (edge WS10 WS10_159)
	    (edge WS10_159 WS10_318)
	    (edge WS10_318 WS10_477)
	    (edge WS10_477 WS10_636)
	    (edge WS10_636 WS10_795)
	    (edge WS10_795 WS10_954)
	    (edge WS10_954 WS07)
	    (edge WS10 WS10_161)
	    (edge WS10_161 WS10_322)
	    (edge WS10_322 WS08)
	    (edge WS12 CB02)
	    (edge WS12 WS12_167)
	    (edge WS12_167 SH01)
	    (edge WS12 WS12_169)
	    (edge WS12_169 WS12_338)
	    (edge WS12_338 WS01)
	    (edge WS12 WS12_171)
	    (edge WS12_171 WS12_342)
	    (edge WS12_342 WS12_513)
	    (edge WS12_513 WS03)
	    (edge WS12 WS12_173)
	    (edge WS12_173 WS12_346)
	    (edge WS12_346 WS12_519)
	    (edge WS12_519 WS12_692)
	    (edge WS12_692 WS12_865)
	    (edge WS12_865 WS12_1038)
	    (edge WS12_1038 WS12_1211)
	    (edge WS12_1211 WS07)
	    (edge WS12 WS12_175)
	    (edge WS12_175 WS12_350)
	    (edge WS12_350 WS12_525)
	    (edge WS12_525 WS12_700)
	    (edge WS12_700 WS12_875)
	    (edge WS12_875 WS08)


	    (onSLOT F20_20_G slot2)
	    (obj-at-location S40_40_B CB02)
	    (obj-at-location MOTOR1 SH01)
	    (obj-at-location MOTOR2 SH01)
	    (obj-at-location BEARING_BOX WS03)
	    (obj-at-location R20 WS07)
	    (obj-at-location MOTOR WS07)
	    (obj-at-location F20_20_B3 WS08)
	    (obj-at-location BEARING WS08)
	    (obj-at-location F20_20_B WS01)

	    (emptySLOT slot1)
	    (emptySLOT slot3)
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