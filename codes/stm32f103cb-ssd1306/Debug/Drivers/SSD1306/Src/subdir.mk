################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Drivers/SSD1306/Src/fonts.c \
../Drivers/SSD1306/Src/ssd1306.c \
../Drivers/SSD1306/Src/test.c 

OBJS += \
./Drivers/SSD1306/Src/fonts.o \
./Drivers/SSD1306/Src/ssd1306.o \
./Drivers/SSD1306/Src/test.o 

C_DEPS += \
./Drivers/SSD1306/Src/fonts.d \
./Drivers/SSD1306/Src/ssd1306.d \
./Drivers/SSD1306/Src/test.d 


# Each subdirectory must supply rules for building sources it contributes
Drivers/SSD1306/Src/fonts.o: ../Drivers/SSD1306/Src/fonts.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Iman/Documents/workspace/STM32CubeIDE/workspace_1.1.0/stm32f103cb-ssd1306/Drivers/SSD1306/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/SSD1306/Src/fonts.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/SSD1306/Src/ssd1306.o: ../Drivers/SSD1306/Src/ssd1306.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Iman/Documents/workspace/STM32CubeIDE/workspace_1.1.0/stm32f103cb-ssd1306/Drivers/SSD1306/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/SSD1306/Src/ssd1306.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"
Drivers/SSD1306/Src/test.o: ../Drivers/SSD1306/Src/test.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F103xB -DDEBUG -c -I../Core/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc -I../Drivers/STM32F1xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F1xx/Include -I../Drivers/CMSIS/Include -I"C:/Users/Iman/Documents/workspace/STM32CubeIDE/workspace_1.1.0/stm32f103cb-ssd1306/Drivers/SSD1306/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Drivers/SSD1306/Src/test.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

