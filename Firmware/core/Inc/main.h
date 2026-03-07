#pragma once

#include "stm32xx_hal.h"
#include "FreeRTOS.h"
#include "semphr.h"
#include "ws2814.h"    // WS2814 LED control
#include "can.h"       // CAN peripheral

// Total number of LEDs on each board 
#define NUM_LEDS_FRONT  10
#define NUM_LEDS_REAR   8
#define NUM_LEDS_CENTER 12
#define NUM_LEDS_SPARE  10

// Timer settings for WS2814 (adjust as needed)
#define WS2814_TIMER_PERIOD 59 // per tutorial maddie linked
#define WS2814_HIGH   ((2*WS2814_TIMER_PERIOD)/3)
#define WS2814_LOW    (WS2814_TIMER_PERIOD/3)
#define WS2814_RESET_SLOTS 50 // pulls data line to 0 for 50us

// Board selection
#define BOARD_FRONT_LEFT   0
#define BOARD_FRONT_RIGHT  1
#define BOARD_REAR_LEFT    2
#define BOARD_REAR_RIGHT   3
#define BOARD_CENTER       4
#define BOARD_SPARE        5

// Which board is activated
#define ACTIVE_BOARD       BOARD_FRONT_LEFT   // Change per board: 0-5

// Controls CAN bit mapping
#define BIT_HEADLIGHTS     0
#define BIT_LEFT_IND       1
#define BIT_RIGHT_IND      2
#define BIT_BRAKE          3
#define BIT_TURNSYNC       4
#define BIT_BPS_STROBE     5
#define BIT_CUSTOM_MODE1   6
#define BIT_CUSTOM_MODE2   7

// ----------------------------
// Global Variables
// ----------------------------
// CAN status byte updated by RX callback
extern uint8_t canByte;  

// WS2814 LED handles for each board
extern ws2814_handle_t ledFrontLeft;
extern ws2814_handle_t ledFrontRight;
extern ws2814_handle_t
