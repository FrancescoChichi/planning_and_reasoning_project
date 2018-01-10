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

	    (emptySLOT slot1)
	    (emptySLOT slot2)
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