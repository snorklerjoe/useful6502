/**
 * I2C Generated Driver Event Header File
 *
 * @file i2c_host_event_types.h
 *
 * @defgroup i2c_host_events I2C_HOST_EVENTS
 *
 * @brief This header file provides helper structures for the I2C driver implementation.
 *
 * @version I2C2 Driver Version 2.1.3
 * 
 * @version I2C2 Package Version 7.0.3
 */

/*
� [2025] Microchip Technology Inc. and its subsidiaries.

    Subject to your compliance with these terms, you may use Microchip 
    software and any derivatives exclusively with Microchip products. 
    You are responsible for complying with 3rd party license terms  
    applicable to your use of 3rd party software (including open source  
    software) that may accompany Microchip software. SOFTWARE IS ?AS IS.? 
    NO WARRANTIES, WHETHER EXPRESS, IMPLIED OR STATUTORY, APPLY TO THIS 
    SOFTWARE, INCLUDING ANY IMPLIED WARRANTIES OF NON-INFRINGEMENT,  
    MERCHANTABILITY, OR FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT 
    WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
    INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY 
    KIND WHATSOEVER RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF 
    MICROCHIP HAS BEEN ADVISED OF THE POSSIBILITY OR THE DAMAGES ARE 
    FORESEEABLE. TO THE FULLEST EXTENT ALLOWED BY LAW, MICROCHIP?S 
    TOTAL LIABILITY ON ALL CLAIMS RELATED TO THE SOFTWARE WILL NOT 
    EXCEED AMOUNT OF FEES, IF ANY, YOU PAID DIRECTLY TO MICROCHIP FOR 
    THIS SOFTWARE.
*/

#ifndef I2C_EVENT_TYPES_H
#define	I2C_EVENT_TYPES_H

#include "i2c_host_types.h"

#define I2C_EVENTS (9)

/**
 * @ingroup i2c_host_events
 * @enum i2c_host_event_states_t
 * @brief I2C event states
 */
typedef enum
{
    I2C_STATE_IDLE = 0,     /**< Idle state*/
    I2C_STATE_SEND_RD_ADDR, /**< Send Read Address state*/
    I2C_STATE_SEND_WR_ADDR, /**< Send Write Address state*/
    I2C_STATE_TX,           /**< Transmit Data state*/
    I2C_STATE_RX,           /**< Receive Data state*/
    I2C_STATE_NACK,         /**< NACK state*/
    I2C_STATE_ERROR,        /**< Error state*/
    I2C_STATE_STOP,         /**< Stop state*/
    I2C_STATE_RESET         /**< Reset state*/
} i2c_host_event_states_t; 

/**
 * @ingroup i2c_host_events
 * @struct i2c_host_event_status_t
 * @brief I2C event status structure.
 */
typedef struct
{
    bool busy; /**< Software busy flag*/
    uint16_t address; /**< Pointer to write buffer*/
    uint8_t *writePtr; /**< Pointer to write buffer*/
    size_t writeLength; /**< Write buffer length*/
    uint8_t *readPtr; /**< Pointer to read buffer*/
    size_t readLength; /**< Read buffer length*/
    bool switchToRead; /**< Switch i2c write to read mode*/
    i2c_host_error_t errorState; /**< Error State*/
    i2c_host_event_states_t state;  /**< Event State index*/
} i2c_host_event_status_t;

typedef i2c_host_event_states_t (*i2c2eventHandler)(void);

extern volatile i2c_host_event_status_t i2c2Status;
extern const i2c2eventHandler i2c2_eventTable[I2C_EVENTS];

#endif /* end of I2C_EVENT_TYPES_H */