INCLUDE "levels/level_enemies.inc"
INCLUDE "include/constants.inc"

; Equates
SLIME_DEF_XVEL EQU $00C0 >> 3 
SLIME_FAST_XVEL EQU $0180 >> 3 
SLIME_BRISK_XVEL EQU $0120 >> 3 
SLIME_SLOW_XVEL EQU $0080 >> 3 
SLIME_DEF_YVEL EQU (0 - $0300) >> 3 
SLIME_HIGH_YVEL EQU (0 - $0400) >> 3 
SLIME_LOW_YVEL EQU (0 - $0200) >> 3 

BIRDY_DEF_XVEL EQU $0120 >> 3 
BIRDY_SLOW_XVEL EQU $00d0 >> 3 
BIRDY_BRISK_XVEL EQU $0160 >> 3 
BIRDY_HASTY_XVEL EQU $01c0 >> 3 
BIRDY_DEF_Y_SPAN EQU 30
BIRDY_FAST_XVEL EQU $0160 >> 3 

SHOOTER_DEF_XVEL_RIGHT EQU $0140 >> 3
SHOOTER_DEF_XVEL_LEFT EQU (0 - $0140) >> 3 
SHOOTER_DEF_YVEL_DOWN EQU $0200 >> 3 
SHOOTER_DEF_YVEL_UP EQU (0 - $0200) >> 3 
SHOOTER_FAST_YVEL_UP EQU (0 - $0400) >> 3 
SHOOTER_SLOW_XVEL_RIGHT EQU $00C0 >> 3 
SHOOTER_SLOW_XVEL_LEFT EQU (0 - $00C0) >> 3 
SHOOTER_FAST_XVEL_LEFT EQU (0 - $0180) >> 3 

SPIKE_DEF_SPEED EQU $0100 >> 3
SPIKE_SLOW_SPEED EQU $00c0 >> 3 
SPIKE_FAST_SPEED EQU $0180 >> 3 
SPIKE_DEF_CHASE_SPEED EQU $00a0 >> 3 

PLATFORM_DEF_SPEED EQU $0080 >> 3 
PLATFORM_BRISK_SPEED EQU $00C0 >> 3 
PLATFORM_FAST_SPEED EQU $0200 >> 3 

	SECTION "LevelEnemies", DATA, BANK[1]
	
Level0Enemies:
	DB ENEMY_NONE
	
Level1Enemies:
	DB ENEMY_SLIME, 24, 25, 18, 24, SLIME_DEF_XVEL, 0, 0 
	DB ENEMY_SLIME, 49, 25, 44, 49, SLIME_DEF_XVEL, 0, 0 
	DB ENEMY_NONE
	
Level2Enemies:
	DB ENEMY_SLIME, 33, 12, 27, 33, SLIME_DEF_XVEL, 0, 0 
	DB ENEMY_SLIME, 31, 28, 23, 31, SLIME_DEF_XVEL, SLIME_DEF_YVEL, SLIME_FLAG_JUMP 
	DB ENEMY_SLIME, 60, 28, 56, 60, SLIME_FAST_XVEL, 0, 0 
	DB ENEMY_NONE
	
Level3Enemies:
	DB ENEMY_SLIME, 51, 60, 43, 51, SLIME_DEF_XVEL, SLIME_DEF_YVEL, SLIME_FLAG_JUMP 
	DB ENEMY_SLIME, 46, 60, 37, 43, SLIME_DEF_XVEL, SLIME_DEF_YVEL, SLIME_FLAG_JUMP 
	DB ENEMY_SLIME, 40, 60, 32, 40, SLIME_DEF_XVEL, SLIME_DEF_YVEL, SLIME_FLAG_JUMP
	DB ENEMY_BIRDY, 47, 41, 39, 47, BIRDY_DEF_XVEL, 0, BIRDY_FLAG_BOMB
	DB ENEMY_SLIME, 42, 22, 42, 49, SLIME_DEF_XVEL, SLIME_DEF_YVEL, SLIME_FLAG_JUMP
	DB ENEMY_SLIME, 42, 22, 42, 49, SLIME_FAST_XVEL, 0, 0
	DB ENEMY_PLATFORM, 31, 24, 16, 31, PLATFORM_DEF_SPEED, PLATFORM_FLAG_WAIT 
	DB ENEMY_BIRDY, 15, 22, 15, 23, BIRDY_DEF_XVEL, 0, BIRDY_FLAG_ONE_WAY
	DB ENEMY_BIRDY, 15, 3, 5, 15, BIRDY_DEF_XVEL, 0, BIRDY_FLAG_BOMB
	DB ENEMY_BIRDY, 61, 14, 56, 61, BIRDY_DEF_XVEL, 0, BIRDY_FLAG_BOMB
	DB ENEMY_NONE
	
Level4Enemies:
	DB ENEMY_SLIME, 34, 28, 26, 34, SLIME_DEF_XVEL, SLIME_DEF_YVEL, SLIME_FLAG_JUMP 
	DB ENEMY_SLIME, 44, 28, 38, 44, SLIME_DEF_XVEL, SLIME_DEF_YVEL, SLIME_FLAG_JUMP
	DB ENEMY_SLIME, 78, 10, 78, 97, SLIME_FAST_XVEL, 0, 0
	DB ENEMY_PLATFORM, 70, 16, 70, 122, PLATFORM_DEF_SPEED, PLATFORM_FLAG_WAIT
	DB ENEMY_BIRDY, 38, 15, 33, 38, BIRDY_DEF_XVEL, 0, 0 
	DB ENEMY_BIRDY, 100, 22, 0, 0, 0 - BIRDY_DEF_XVEL, BIRDY_DEF_Y_SPAN, BIRDY_FLAG_ONE_WAY | BIRDY_FLAG_ZIG_ZAG  
	DB ENEMY_SHOOTER, 103, 9, SHOOTER_DEF_XVEL_RIGHT, SHOOTER_DEF_YVEL_UP, 40, SHOOTER_FLAG_APPLY_GRAVITY
	DB ENEMY_NONE 
	
Level5Enemies:
	DB ENEMY_SLIME, 24, 16, 24, 16, 0, SLIME_HIGH_YVEL, SLIME_FLAG_JUMP 
	DB ENEMY_BIRDY, 48, 8, 39, 48, BIRDY_DEF_XVEL, 24, BIRDY_FLAG_ZIG_ZAG
	DB ENEMY_SLIME, 74, 9, 72, 74, SLIME_DEF_XVEL, 0, 0 
	DB ENEMY_SHOOTER, 94, 28, SHOOTER_DEF_XVEL_RIGHT, 0, 50, 0 
	DB ENEMY_SHOOTER, 125, 28, SHOOTER_DEF_XVEL_LEFT, 0, 50, 0 
	DB ENEMY_PLATFORM, 121, 14, 116, 121, PLATFORM_DEF_SPEED, 0
	DB ENEMY_PLATFORM, 125, 6, 6, 14, PLATFORM_DEF_SPEED, PLATFORM_FLAG_VERTICAL
	DB ENEMY_NONE 
	
Level6Enemies:
	DB ENEMY_SLIME, 72, 91, 57, 72, SLIME_BRISK_XVEL, SLIME_LOW_YVEL, SLIME_FLAG_JUMP
	DB ENEMY_SLIME, 72, 91, 57, 72, SLIME_DEF_XVEL, SLIME_DEF_YVEL, SLIME_FLAG_JUMP
	DB ENEMY_BIRDY, 77, 71, 74, 77, BIRDY_DEF_XVEL, 0, BIRDY_FLAG_BOMB
	DB ENEMY_BIRDY, 67, 71, 63, 67, BIRDY_DEF_XVEL, 0, BIRDY_FLAG_BOMB
	DB ENEMY_SPIKE, 121, 101, 109, 121, SPIKE_DEF_SPEED, 0 
	DB ENEMY_PLATFORM, 120, 40, 21, 40, PLATFORM_DEF_SPEED, PLATFORM_FLAG_VERTICAL | PLATFORM_FLAG_WAIT
	DB ENEMY_PLATFORM, 117, 21, 22, 117, PLATFORM_BRISK_SPEED, PLATFORM_FLAG_WAIT
	DB ENEMY_BIRDY, 85, 14, 81, 85, BIRDY_DEF_XVEL, 0, BIRDY_FLAG_BOMB
	DB ENEMY_SPIKE, 68, 17, 17, 25, SPIKE_DEF_SPEED, SPIKE_FLAG_VERTICAL 
	DB ENEMY_SPIKE, 59, 25, 17, 25, SPIKE_DEF_SPEED, SPIKE_FLAG_VERTICAL 
	DB ENEMY_SHOOTER, 52, 15, SHOOTER_DEF_XVEL_LEFT, 0, 50, SHOOTER_FLAG_APPLY_GRAVITY
	DB ENEMY_SHOOTER, 42, 23, 0, SHOOTER_FAST_YVEL_UP, 60, SHOOTER_FLAG_APPLY_GRAVITY
	DB ENEMY_SLIME, 80, 58, 80, 88, SLIME_DEF_XVEL, SLIME_DEF_YVEL, SLIME_FLAG_JUMP
	DB ENEMY_SHOOTER, 63, 49, SHOOTER_DEF_XVEL_LEFT, SHOOTER_DEF_YVEL_UP, 50, SHOOTER_FLAG_APPLY_GRAVITY
	DB ENEMY_SHOOTER, 50, 49, SHOOTER_DEF_XVEL_RIGHT, 0, 40, SHOOTER_FLAG_APPLY_GRAVITY
	DB ENEMY_BIRDY, 12, 52, 0, 0, BIRDY_DEF_XVEL, 8, BIRDY_FLAG_ZIG_ZAG | BIRDY_FLAG_ONE_WAY
	DB ENEMY_PLATFORM, 19, 44, 44, 53, PLATFORM_DEF_SPEED, PLATFORM_FLAG_VERTICAL
	DB ENEMY_PLATFORM, 24, 44, 24, 44, PLATFORM_DEF_SPEED, PLATFORM_FLAG_VERTICAL | PLATFORM_FLAG_WAIT
	DB ENEMY_PLATFORM, 19, 33, 22, 33, PLATFORM_DEF_SPEED, PLATFORM_FLAG_VERTICAL | PLATFORM_FLAG_WAIT
	DB ENEMY_NONE 
	
Level7Enemies:
	DB ENEMY_NONE
	
Level8Enemies:
	DB ENEMY_PLATFORM, 25, 52, 44, 52, PLATFORM_DEF_SPEED, PLATFORM_FLAG_VERTICAL | PLATFORM_FLAG_WAIT
	DB ENEMY_PLATFORM, 23, 57, 23, 33, PLATFORM_DEF_SPEED, PLATFORM_FLAG_WAIT
	DB ENEMY_SPIKE, 23, 29, 29, 38, SPIKE_FAST_SPEED, SPIKE_FLAG_VERTICAL
	DB ENEMY_SPIKE, 13, 32, 13, 19, SPIKE_DEF_SPEED, 0 
	DB ENEMY_SLIME, 43, 58, 37, 43, SLIME_DEF_XVEL, SLIME_DEF_YVEL, SLIME_FLAG_JUMP
	DB ENEMY_BIRDY, 95, 40, 0, 0, 0 - BIRDY_DEF_XVEL, 0, BIRDY_FLAG_ONE_WAY
	DB ENEMY_BIRDY, 97, 38, 0, 0, 0 - BIRDY_DEF_XVEL, 0, BIRDY_FLAG_ONE_WAY
	DB ENEMY_SPIKE, 122, 45, 36, 45, SPIKE_FAST_SPEED, SPIKE_FLAG_VERTICAL
	DB ENEMY_SPIKE, 124, 45, 36, 45, SPIKE_DEF_SPEED, SPIKE_FLAG_VERTICAL
	DB ENEMY_SHOOTER, 114, 49, SHOOTER_DEF_XVEL_RIGHT, 0, 40, 0 
	DB ENEMY_SLIME, 58, 21, 58, 62, SLIME_DEF_XVEL, 0, 0 
	DB ENEMY_SLIME, 67, 21, 67, 72, SLIME_DEF_XVEL, 0, 0 
	DB ENEMY_NONE
	
Level9Enemies:
	DB ENEMY_NONE
	
Level10Enemies:
	DB ENEMY_BIRDY, 5, 49, 1, 5, BIRDY_FAST_XVEL, 0, 0 
	DB ENEMY_BIRDY, 18, 49, 8, 18, BIRDY_DEF_XVEL, 0, 0 
	DB ENEMY_SLIME, 16, 58, 11, 16, SLIME_DEF_XVEL, SLIME_DEF_YVEL, SLIME_FLAG_JUMP
	DB ENEMY_SLIME, 8, 68, 8, 23, SLIME_DEF_XVEL, SLIME_DEF_YVEL, SLIME_FLAG_JUMP 
	DB ENEMY_SLIME, 15, 68, 15, 23, SLIME_SLOW_XVEL, SLIME_LOW_YVEL, SLIME_FLAG_JUMP
	DB ENEMY_SPIKE, 11, 78, 8, 11, SPIKE_DEF_SPEED, 0 
	DB ENEMY_SPIKE, 17, 75, 14, 17, SPIKE_DEF_SPEED, 0 
	DB ENEMY_SLIME, 22, 78, 14, 22, SLIME_SLOW_XVEL, 0, 0 
	DB ENEMY_SPIKE, 13, 88, 13, 24, SPIKE_DEF_SPEED, 0 
	DB ENEMY_BIRDY, 16, 123, 0, 0, 0 - BIRDY_BRISK_XVEL, 0, BIRDY_FLAG_ONE_WAY
	DB ENEMY_BIRDY, 16, 117, 0, 0, 0 - BIRDY_SLOW_XVEL, 0, BIRDY_FLAG_ONE_WAY
	DB ENEMY_BIRDY, 16, 120, 0, 0, 0 - BIRDY_DEF_XVEL, 0, BIRDY_FLAG_ONE_WAY
	DB ENEMY_NONE 
	
Level11Enemies:
	DB ENEMY_SPIKE, 22, 31, 27, 31, SPIKE_DEF_SPEED, SPIKE_FLAG_VERTICAL
	DB ENEMY_SLIME, 2, 31, 2, 11, SLIME_DEF_XVEL, 0, 0 
	DB ENEMY_SHOOTER, 53, 31, 0, SHOOTER_FAST_YVEL_UP, 40, SHOOTER_FLAG_APPLY_GRAVITY
	DB ENEMY_SHOOTER, 55, 3, SHOOTER_DEF_XVEL_LEFT, SHOOTER_DEF_YVEL_DOWN, 36, 0 
	DB ENEMY_PLATFORM, 57, 13, 24, 57, PLATFORM_FAST_SPEED, PLATFORM_FLAG_WAIT
	DB ENEMY_BIRDY, 47, 53, 47, 53, BIRDY_DEF_XVEL, 0, BIRDY_FLAG_BOMB
	DB ENEMY_BIRDY, 53, 80, 53, 59, BIRDY_DEF_XVEL, 0, 0 
	DB ENEMY_SLIME, 8, 59, 8, 20, SLIME_DEF_XVEL, SLIME_DEF_YVEL, SLIME_FLAG_JUMP
	DB ENEMY_SLIME, 8, 59, 8, 20, SLIME_FAST_XVEL, SLIME_DEF_YVEL, SLIME_FLAG_JUMP
	DB ENEMY_SLIME, 8, 59, 8, 20, SLIME_BRISK_XVEL, 0, 0
	DB ENEMY_NONE 
	
Level12Enemies:
	DB ENEMY_SPIKE, 24, 16, 0, 0, SPIKE_DEF_CHASE_SPEED, SPIKE_FLAG_CHASE 
	DB ENEMY_SLIME, 49, 24, 47, 49, SLIME_DEF_XVEL, 0, 0 
	DB ENEMY_SLIME, 41, 10, 39, 41, SLIME_DEF_XVEL, SLIME_DEF_YVEL, SLIME_FLAG_JUMP
	DB ENEMY_BIRDY, 60, 9, 0, 0, 0 - BIRDY_DEF_XVEL, 16, BIRDY_FLAG_ONE_WAY | BIRDY_FLAG_BOMB | BIRDY_FLAG_ZIG_ZAG
	DB ENEMY_BIRDY, 94, 17, 0, 0, 0 - BIRDY_DEF_XVEL, 16, BIRDY_FLAG_ONE_WAY | BIRDY_FLAG_BOMB | BIRDY_FLAG_ZIG_ZAG
	DB ENEMY_SLIME, 58, 7, 56, 58, SLIME_BRISK_XVEL, SLIME_LOW_YVEL, SLIME_FLAG_JUMP
	DB ENEMY_SLIME, 67, 23, 65, 67, SLIME_BRISK_XVEL, SLIME_LOW_YVEL, SLIME_FLAG_JUMP
	DB ENEMY_BIRDY, 70, 12, 64, 70, BIRDY_DEF_XVEL, 0, 0 
	DB ENEMY_SHOOTER, 101, 28, SHOOTER_DEF_XVEL_RIGHT, 0, 50, 0 
	DB ENEMY_SHOOTER, 107, 28, SHOOTER_DEF_XVEL_RIGHT, SHOOTER_DEF_YVEL_UP,  42, SHOOTER_FLAG_APPLY_GRAVITY
	DB ENEMY_SHOOTER, 99, 11, SHOOTER_DEF_XVEL_RIGHT, 0, 30, 0 
	DB ENEMY_NONE
	
Level13Enemies:
	DB ENEMY_SPIKE, 24, 6, 0, 0, 0, SPIKE_FLAG_STATIONARY
	DB ENEMY_SPIKE, 24, 8, 0, 0, 0, SPIKE_FLAG_STATIONARY
	DB ENEMY_NONE 
	
Level14Enemies:
	DB ENEMY_SLIME, 90, 17, 80, 90, SLIME_BRISK_XVEL, 0, 0 
	DB ENEMY_SLIME, 112, 32, 101, 112, SLIME_BRISK_XVEL, 0, 0 
	DB ENEMY_BIRDY, 115, 8, 111, 115, BIRDY_DEF_XVEL, 0, BIRDY_FLAG_BOMB
	DB ENEMY_BIRDY, 123, 41, 119, 123, BIRDY_DEF_XVEL, 0, 0 
	DB ENEMY_SPIKE, 125, 45, 117, 125, SPIKE_FAST_SPEED, SPIKE_FLAG_BLACK 
	DB ENEMY_SPIKE, 104, 82, 82, 89, SPIKE_DEF_SPEED, SPIKE_FLAG_VERTICAL
	DB ENEMY_SHOOTER, 107, 102, SHOOTER_SLOW_XVEL_RIGHT, 0, 30, SHOOTER_FLAG_APPLY_GRAVITY
	DB ENEMY_SLIME, 26, 21, 26, 36, SLIME_BRISK_XVEL, 0, 0 
	DB ENEMY_PLATFORM, 18, 26, 8, 26, PLATFORM_DEF_SPEED, PLATFORM_FLAG_WAIT | PLATFORM_FLAG_VERTICAL
	DB ENEMY_SPIKE, 17, 15, 17, 24, SPIKE_FAST_SPEED, 0 
	DB ENEMY_SPIKE, 15, 5, 0, 0, 0, SPIKE_FLAG_STATIONARY 
	DB ENEMY_BIRDY, 8, 33, 3, 8, BIRDY_DEF_XVEL, 0, 0 
	DB ENEMY_BIRDY, 3, 26, 3, 8, BIRDY_DEF_XVEL, 0, 0 
	DB ENEMY_SHOOTER, 16, 107, SHOOTER_DEF_XVEL_LEFT, SHOOTER_FAST_YVEL_UP, 25, SHOOTER_FLAG_APPLY_GRAVITY
	DB ENEMY_PLATFORM, 84, 45, 77, 84, PLATFORM_DEF_SPEED, 0 
	DB ENEMY_BIRDY, 53, 45, 48, 53, BIRDY_FAST_XVEL, 8, BIRDY_FLAG_ZIG_ZAG
	DB ENEMY_NONE 
	
Level15Enemies:
	DB ENEMY_BIRDY, 31, 54, 31, 40, BIRDY_DEF_XVEL, 16, BIRDY_FLAG_BOMB | BIRDY_FLAG_ZIG_ZAG
	DB ENEMY_BIRDY, 31, 57, 31, 40, BIRDY_SLOW_XVEL, 16, BIRDY_FLAG_BOMB | BIRDY_FLAG_ZIG_ZAG
	DB ENEMY_SLIME, 17, 56, 17, 20, SLIME_DEF_XVEL, SLIME_DEF_YVEL, SLIME_FLAG_JUMP
	DB ENEMY_SPIKE, 4, 53, 4, 10, SPIKE_DEF_SPEED, SPIKE_FLAG_BLACK
	DB ENEMY_SHOOTER, 11, 34, SHOOTER_DEF_XVEL_LEFT, 0, 32, SHOOTER_FLAG_APPLY_GRAVITY
	DB ENEMY_SHOOTER, 13, 34, SHOOTER_DEF_XVEL_LEFT, SHOOTER_DEF_YVEL_UP, 50, SHOOTER_FLAG_APPLY_GRAVITY
	DB ENEMY_PLATFORM, 11, 8, 11, 55, PLATFORM_DEF_SPEED, PLATFORM_FLAG_WAIT
	DB ENEMY_PLATFORM, 36, 15, 36, 55, PLATFORM_FAST_SPEED, PLATFORM_FLAG_WAIT
	DB ENEMY_PLATFORM, 5, 60, 28, 60, PLATFORM_DEF_SPEED, PLATFORM_FLAG_VERTICAL | PLATFORM_FLAG_WAIT
	DB ENEMY_SLIME, 49, 45, 35, 49, SLIME_DEF_XVEL, SLIME_LOW_YVEL, SLIME_FLAG_JUMP
	DB ENEMY_BIRDY, 46, 5, 0, 0, 0 - BIRDY_DEF_XVEL, 24, BIRDY_FLAG_ZIG_ZAG | BIRDY_FLAG_ONE_WAY
	DB ENEMY_SPIKE, 28, 4, 4, 11, SPIKE_DEF_SPEED, SPIKE_FLAG_BLACK | SPIKE_FLAG_VERTICAL
	DB ENEMY_SPIKE, 31, 7, 22, 31, SPIKE_FAST_SPEED, SPIKE_FLAG_BLACK
	DB ENEMY_NONE 
	
Level16Enemies:
	DB ENEMY_PLATFORM, 24, 123, 107, 123, PLATFORM_DEF_SPEED, PLATFORM_FLAG_VERTICAL | PLATFORM_FLAG_WAIT
	DB ENEMY_PLATFORM, 7, 107, 92, 107, PLATFORM_DEF_SPEED, PLATFORM_FLAG_VERTICAL | PLATFORM_FLAG_WAIT
	DB ENEMY_PLATFORM, 18, 92, 80, 92, PLATFORM_DEF_SPEED, PLATFORM_FLAG_VERTICAL | PLATFORM_FLAG_WAIT
	DB ENEMY_NONE
	
Level17Enemies:
	DB ENEMY_SLIME, 36, 124, 36, 44, SLIME_BRISK_XVEL, SLIME_LOW_YVEL, SLIME_FLAG_JUMP
	DB ENEMY_SLIME, 29, 124, 29, 44, SLIME_BRISK_XVEL, 0, 0
	DB ENEMY_BIRDY, 13, 104, 13, 23, BIRDY_DEF_XVEL, 0, BIRDY_FLAG_BOMB
	DB ENEMY_BIRDY, 1, 100, 1, 7, BIRDY_DEF_XVEL, 0, BIRDY_FLAG_BOMB
	DB ENEMY_BIRDY, 57, 100, 0, 0, 0 - BIRDY_DEF_XVEL, 16, BIRDY_FLAG_ONE_WAY | BIRDY_FLAG_ZIG_ZAG
	DB ENEMY_SLIME, 46, 97, 46, 48, SLIME_FAST_XVEL, SLIME_HIGH_YVEL, SLIME_FLAG_JUMP
	DB ENEMY_SLIME, 41, 97, 41, 42, SLIME_FAST_XVEL, SLIME_HIGH_YVEL, SLIME_FLAG_JUMP
	DB ENEMY_BIRDY, 23, 76, 0, 0, BIRDY_DEF_XVEL, 0, BIRDY_FLAG_ONE_WAY
	DB ENEMY_SPIKE, 10, 83, 10, 18, SPIKE_DEF_SPEED, SPIKE_FLAG_BLACK
	DB ENEMY_BIRDY, 48, 58, 0, 0, 0 - BIRDY_FAST_XVEL, 32, BIRDY_FLAG_ONE_WAY | BIRDY_FLAG_ZIG_ZAG
	DB ENEMY_BIRDY, 46, 60, 0, 0, 0 - BIRDY_DEF_XVEL, 16, BIRDY_FLAG_ONE_WAY | BIRDY_FLAG_ZIG_ZAG
	DB ENEMY_PLATFORM, 59, 60, 30, 60, PLATFORM_DEF_SPEED, PLATFORM_FLAG_VERTICAL | PLATFORM_FLAG_WAIT
	DB ENEMY_SPIKE, 59, 40, 40, 60, SPIKE_SLOW_SPEED, SPIKE_FLAG_VERTICAL
	DB ENEMY_BIRDY, 51, 2, 44, 51, BIRDY_DEF_XVEL, 0, BIRDY_FLAG_BOMB
	DB ENEMY_PLATFORM, 1, 109, 78, 109, PLATFORM_DEF_SPEED, PLATFORM_FLAG_VERTICAL | PLATFORM_FLAG_WAIT
	DB ENEMY_NONE 
	
Level18Enemies:
	DB ENEMY_NONE 
	
Level19Enemies:
	DB ENEMY_SLIME, 27, 55, 17, 27, SLIME_DEF_XVEL, SLIME_DEF_YVEL, SLIME_FLAG_JUMP 
	DB ENEMY_BIRDY, 42, 55, 0, 0, 0 - BIRDY_DEF_XVEL, 0, BIRDY_FLAG_ONE_WAY
	DB ENEMY_SHOOTER, 46, 55, SHOOTER_DEF_XVEL_LEFT, SHOOTER_DEF_YVEL_UP, 30, 0
	DB ENEMY_SHOOTER, 58, 55, 0, SHOOTER_DEF_YVEL_UP, 32, 0 
	DB ENEMY_BIRDY, 35, 28, 35, 40, BIRDY_FAST_XVEL, 0, 0 
	DB ENEMY_BIRDY, 13, 21, 13, 18, BIRDY_DEF_XVEL, 0, BIRDY_FLAG_BOMB
	DB ENEMY_PLATFORM, 4, 6, 4, 55, PLATFORM_BRISK_SPEED, PLATFORM_FLAG_WAIT
	DB ENEMY_SPIKE, 49, 5, 0, 0, SPIKE_FLAG_STATIONARY
	DB ENEMY_SPIKE, 54, 1, 0, 0, SPIKE_FLAG_STATIONARY
	DB ENEMY_NONE 
	
Level20Enemies:
	DB ENEMY_SPIKE, 23, 9, 0, 0, SPIKE_DEF_CHASE_SPEED, SPIKE_FLAG_CHASE
	DB ENEMY_NONE 
	
Level21Enemies:
	DB ENEMY_NONE 
	
Level22Enemies:
	DB ENEMY_NONE 
	
Level23Enemies:
	DB ENEMY_NONE 
	
Level24Enemies:
	DB ENEMY_NONE 