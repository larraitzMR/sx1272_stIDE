################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Lora/Mac/region/Region.c \
../Lora/Mac/region/RegionAS923.c \
../Lora/Mac/region/RegionAU915.c \
../Lora/Mac/region/RegionCN470.c \
../Lora/Mac/region/RegionCN779.c \
../Lora/Mac/region/RegionCommon.c \
../Lora/Mac/region/RegionEU433.c \
../Lora/Mac/region/RegionEU868.c \
../Lora/Mac/region/RegionIN865.c \
../Lora/Mac/region/RegionKR920.c \
../Lora/Mac/region/RegionUS915-Hybrid.c \
../Lora/Mac/region/RegionUS915.c 

OBJS += \
./Lora/Mac/region/Region.o \
./Lora/Mac/region/RegionAS923.o \
./Lora/Mac/region/RegionAU915.o \
./Lora/Mac/region/RegionCN470.o \
./Lora/Mac/region/RegionCN779.o \
./Lora/Mac/region/RegionCommon.o \
./Lora/Mac/region/RegionEU433.o \
./Lora/Mac/region/RegionEU868.o \
./Lora/Mac/region/RegionIN865.o \
./Lora/Mac/region/RegionKR920.o \
./Lora/Mac/region/RegionUS915-Hybrid.o \
./Lora/Mac/region/RegionUS915.o 

C_DEPS += \
./Lora/Mac/region/Region.d \
./Lora/Mac/region/RegionAS923.d \
./Lora/Mac/region/RegionAU915.d \
./Lora/Mac/region/RegionCN470.d \
./Lora/Mac/region/RegionCN779.d \
./Lora/Mac/region/RegionCommon.d \
./Lora/Mac/region/RegionEU433.d \
./Lora/Mac/region/RegionEU868.d \
./Lora/Mac/region/RegionIN865.d \
./Lora/Mac/region/RegionKR920.d \
./Lora/Mac/region/RegionUS915-Hybrid.d \
./Lora/Mac/region/RegionUS915.d 


# Each subdirectory must supply rules for building sources it contributes
Lora/Mac/region/Region.o: ../Lora/Mac/region/Region.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F411xE -DDEBUG -DUSE_BAND_868 -DUSE_MODEM_LORA -DREGION_EU868 -c -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Lora/Core -I../Lora/Crypto -I../Lora/Mac -I../Lora/Mac/region -I../Lora/Utilities -I../Lora/Phy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Lora/Mac/region/Region.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Lora/Mac/region/RegionAS923.o: ../Lora/Mac/region/RegionAS923.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F411xE -DDEBUG -DUSE_BAND_868 -DUSE_MODEM_LORA -DREGION_EU868 -c -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Lora/Core -I../Lora/Crypto -I../Lora/Mac -I../Lora/Mac/region -I../Lora/Utilities -I../Lora/Phy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Lora/Mac/region/RegionAS923.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Lora/Mac/region/RegionAU915.o: ../Lora/Mac/region/RegionAU915.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F411xE -DDEBUG -DUSE_BAND_868 -DUSE_MODEM_LORA -DREGION_EU868 -c -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Lora/Core -I../Lora/Crypto -I../Lora/Mac -I../Lora/Mac/region -I../Lora/Utilities -I../Lora/Phy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Lora/Mac/region/RegionAU915.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Lora/Mac/region/RegionCN470.o: ../Lora/Mac/region/RegionCN470.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F411xE -DDEBUG -DUSE_BAND_868 -DUSE_MODEM_LORA -DREGION_EU868 -c -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Lora/Core -I../Lora/Crypto -I../Lora/Mac -I../Lora/Mac/region -I../Lora/Utilities -I../Lora/Phy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Lora/Mac/region/RegionCN470.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Lora/Mac/region/RegionCN779.o: ../Lora/Mac/region/RegionCN779.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F411xE -DDEBUG -DUSE_BAND_868 -DUSE_MODEM_LORA -DREGION_EU868 -c -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Lora/Core -I../Lora/Crypto -I../Lora/Mac -I../Lora/Mac/region -I../Lora/Utilities -I../Lora/Phy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Lora/Mac/region/RegionCN779.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Lora/Mac/region/RegionCommon.o: ../Lora/Mac/region/RegionCommon.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F411xE -DDEBUG -DUSE_BAND_868 -DUSE_MODEM_LORA -DREGION_EU868 -c -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Lora/Core -I../Lora/Crypto -I../Lora/Mac -I../Lora/Mac/region -I../Lora/Utilities -I../Lora/Phy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Lora/Mac/region/RegionCommon.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Lora/Mac/region/RegionEU433.o: ../Lora/Mac/region/RegionEU433.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F411xE -DDEBUG -DUSE_BAND_868 -DUSE_MODEM_LORA -DREGION_EU868 -c -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Lora/Core -I../Lora/Crypto -I../Lora/Mac -I../Lora/Mac/region -I../Lora/Utilities -I../Lora/Phy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Lora/Mac/region/RegionEU433.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Lora/Mac/region/RegionEU868.o: ../Lora/Mac/region/RegionEU868.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F411xE -DDEBUG -DUSE_BAND_868 -DUSE_MODEM_LORA -DREGION_EU868 -c -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Lora/Core -I../Lora/Crypto -I../Lora/Mac -I../Lora/Mac/region -I../Lora/Utilities -I../Lora/Phy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Lora/Mac/region/RegionEU868.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Lora/Mac/region/RegionIN865.o: ../Lora/Mac/region/RegionIN865.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F411xE -DDEBUG -DUSE_BAND_868 -DUSE_MODEM_LORA -DREGION_EU868 -c -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Lora/Core -I../Lora/Crypto -I../Lora/Mac -I../Lora/Mac/region -I../Lora/Utilities -I../Lora/Phy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Lora/Mac/region/RegionIN865.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Lora/Mac/region/RegionKR920.o: ../Lora/Mac/region/RegionKR920.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F411xE -DDEBUG -DUSE_BAND_868 -DUSE_MODEM_LORA -DREGION_EU868 -c -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Lora/Core -I../Lora/Crypto -I../Lora/Mac -I../Lora/Mac/region -I../Lora/Utilities -I../Lora/Phy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Lora/Mac/region/RegionKR920.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Lora/Mac/region/RegionUS915-Hybrid.o: ../Lora/Mac/region/RegionUS915-Hybrid.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F411xE -DDEBUG -DUSE_BAND_868 -DUSE_MODEM_LORA -DREGION_EU868 -c -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Lora/Core -I../Lora/Crypto -I../Lora/Mac -I../Lora/Mac/region -I../Lora/Utilities -I../Lora/Phy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Lora/Mac/region/RegionUS915-Hybrid.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Lora/Mac/region/RegionUS915.o: ../Lora/Mac/region/RegionUS915.c
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DUSE_HAL_DRIVER -DSTM32F411xE -DDEBUG -DUSE_BAND_868 -DUSE_MODEM_LORA -DREGION_EU868 -c -I../Inc -I../Drivers/CMSIS/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Lora/Core -I../Lora/Crypto -I../Lora/Mac -I../Lora/Mac/region -I../Lora/Utilities -I../Lora/Phy -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"Lora/Mac/region/RegionUS915.d" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

