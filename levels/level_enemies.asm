INCLUDE "levels/level_enemies.inc"
INCLUDE "include/constants.inc"

; Equates
SLIME_DEF_XVEL EQU $00C0 >> 3 
SLIME_XVEL_FAST EQU $0180 >> 3 
SLIME_XVEL_SLOW EQU $0050 >> 3 
SLIME_XVEL_TEST1 EQU $0160 >> 3 
SLIME_XVEL_TEST2 EQU $0120 >> 3 
SLIME_XVEL_TEST3 EQU $00D0 >> 3 
SLIME_XVEL_TEST4 EQU $0080 >> 3 
SLIME_XVEL_TEST5 EQU $0040 >> 3 
SLIME_YVEL_TEST1 EQU (0 - $0300) >> 3 
SLIME_DEF_YVEL EQU (0 - $0400) >> 3 

BIRDY_DEF_XVEL EQU $0120 >> 3 

SHOOTER_DEF_XVEL_RIGHT EQU $0140 >> 3
SHOOTER_DEF_XVEL_LEFT EQU (0 - $0140) >> 3 
SHOOTER_DEF_YVEL_DOWN EQU $0200 >> 3 
SHOOTER_DEF_YVEL_UP EQU (0 - $0200) >> 3 

SPIKE_DEFAULT_SPEED EQU $0100 >> 3
SPIKE_DEFAULT_CHASE_SPEED EQU $0080 >> 3 

PLATFORM_DEF_SPEED EQU $0080 >> 3 

	SECTION "LevelEnemies", DATA, BANK[1]
	
Level0Enemies:
	DB ENEMY_SLIME, 39, 15, 37, 40, SLIME_DEF_XVEL, 0, 0 
	DB ENEMY_SPIKE, 42, 23, 23, 28, SPIKE_DEFAULT_CHASE_SPEED, SPIKE_FLAG_VERTICAL 
	DB ENEMY_SLIME, 47, 11, 44, 49, SLIME_XVEL_SLOW, SLIME_DEF_YVEL, SLIME_FLAG_JUMP 
	DB ENEMY_SHOOTER, 61, 28, SHOOTER_DEF_XVEL_LEFT, 0, 120, 0  
	DB ENEMY_NONE
	
Level1Enemies:
	DB ENEMY_BIRDY, 25, 9, 10, 25, BIRDY_DEF_XVEL, 20, BIRDY_FLAG_ZIG_ZAG | BIRDY_FLAG_BOMB
	DB ENEMY_SHOOTER, 2, 6, SHOOTER_DEF_XVEL_RIGHT, SHOOTER_DEF_YVEL_UP, 80, SHOOTER_FLAG_APPLY_GRAVITY
	DB ENEMY_NONE
	
Level2Enemies:
	DB ENEMY_PLATFORM, 16, 91, 80, 97, PLATFORM_DEF_SPEED, PLATFORM_FLAG_WAIT | PLATFORM_FLAG_VERTICAL
	DB ENEMY_BIRDY, 6, 121, 0, 0, BIRDY_DEF_XVEL, 0, BIRDY_FLAG_ONE_WAY
	DB ENEMY_PLATFORM, 11, 91, 6, 14, PLATFORM_DEF_SPEED, 0 
	DB ENEMY_BIRDY, 26, 121, 0, 0, 0 - BIRDY_DEF_XVEL, 0, BIRDY_FLAG_ONE_WAY
	DB ENEMY_NONE
	
Level3Enemies:
	DB ENEMY_SLIME, 20, 26, 20, 60, SLIME_DEF_XVEL, SLIME_YVEL_TEST1, SLIME_FLAG_JUMP  
	DB ENEMY_SLIME, 84, 11, 85, 86, 0, SLIME_DEF_YVEL, 0  
	DB ENEMY_PLATFORM, 28, 72, 28, 105, PLATFORM_DEF_SPEED, PLATFORM_FLAG_WAIT
	;DB ENEMY_SHOOTER, 109, 71, SHOOTER_DEF_XVEL_RIGHT, SHOOTER_DEF_YVEL_UP, 80, SHOOTER_FLAG_APPLY_GRAVITY
	;DB ENEMY_SHOOTER, 111, 71, SHOOTER_DEF_XVEL_RIGHT, SHOOTER_DEF_YVEL_UP, 80, SHOOTER_FLAG_APPLY_GRAVITY
	;DB ENEMY_SHOOTER, 113, 71, SHOOTER_DEF_XVEL_RIGHT, SHOOTER_DEF_YVEL_UP, 80, SHOOTER_FLAG_APPLY_GRAVITY
	;DB ENEMY_SHOOTER, 110, 69, SHOOTER_DEF_XVEL_RIGHT, SHOOTER_DEF_YVEL_UP, 80, SHOOTER_FLAG_APPLY_GRAVITY
	;DB ENEMY_SHOOTER, 112, 69, SHOOTER_DEF_XVEL_RIGHT, SHOOTER_DEF_YVEL_UP, 80, SHOOTER_FLAG_APPLY_GRAVITY
	DB ENEMY_SLIME, 118, 71, 109, 116, SLIME_XVEL_TEST1, SLIME_YVEL_TEST1, SLIME_FLAG_JUMP  
	DB ENEMY_SLIME, 118, 71, 109, 116, SLIME_XVEL_TEST2, SLIME_DEF_YVEL, SLIME_FLAG_JUMP  
	DB ENEMY_SLIME, 118, 71, 109, 116, SLIME_XVEL_TEST3, SLIME_DEF_YVEL, SLIME_FLAG_JUMP 
	DB ENEMY_SLIME, 118, 71, 109, 116, SLIME_XVEL_TEST4, SLIME_YVEL_TEST1, SLIME_FLAG_JUMP 
	DB ENEMY_SLIME, 118, 71, 109, 116, SLIME_XVEL_TEST5, SLIME_DEF_YVEL, SLIME_FLAG_JUMP  
	DB ENEMY_SLIME, 118, 71, 109, 116, SLIME_XVEL_TEST1, SLIME_YVEL_TEST1, SLIME_FLAG_JUMP  
	DB ENEMY_SLIME, 118, 71, 109, 116, SLIME_XVEL_TEST2, SLIME_DEF_YVEL, SLIME_FLAG_JUMP 
	DB ENEMY_SLIME, 118, 71, 109, 116, SLIME_XVEL_TEST3, SLIME_DEF_YVEL, SLIME_FLAG_JUMP 
	DB ENEMY_SLIME, 118, 71, 109, 116, SLIME_XVEL_TEST4, SLIME_YVEL_TEST1, SLIME_FLAG_JUMP  
	DB ENEMY_SLIME, 118, 71, 109, 116, SLIME_XVEL_TEST5, SLIME_DEF_YVEL, SLIME_FLAG_JUMP  
	DB ENEMY_SLIME, 118, 71, 109, 116, SLIME_XVEL_TEST1, SLIME_YVEL_TEST1, SLIME_FLAG_JUMP  
	DB ENEMY_SLIME, 118, 71, 109, 116, SLIME_XVEL_TEST2, SLIME_DEF_YVEL, SLIME_FLAG_JUMP    
	DB ENEMY_SLIME, 118, 71, 109, 116, SLIME_XVEL_TEST1, SLIME_YVEL_TEST1, SLIME_FLAG_JUMP  
	DB ENEMY_SLIME, 118, 71, 109, 116, SLIME_XVEL_TEST1, SLIME_YVEL_TEST1, SLIME_FLAG_JUMP  
	DB ENEMY_SLIME, 118, 71, 109, 116, SLIME_XVEL_TEST1, SLIME_YVEL_TEST1, SLIME_FLAG_JUMP  
	DB ENEMY_SLIME, 118, 71, 109, 116, SLIME_XVEL_TEST1, SLIME_YVEL_TEST1, SLIME_FLAG_JUMP  
	DB ENEMY_SLIME, 118, 71, 109, 116, SLIME_XVEL_TEST1, SLIME_YVEL_TEST1, SLIME_FLAG_JUMP  
	DB ENEMY_NONE