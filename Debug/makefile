################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include Startup/subdir.mk
-include Src/subdir.mk
-include Lora/Utilities/subdir.mk
-include Lora/Phy/sx1272/subdir.mk
-include Lora/Mac/region/subdir.mk
-include Lora/Mac/subdir.mk
-include Lora/Crypto/subdir.mk
-include Lora/Core/subdir.mk
-include Drivers/STM32F4xx_HAL_Driver/Src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
EXECUTABLES += \
lora_st.elf \

SIZE_OUTPUT += \
default.size.stdout \

OBJDUMP_LIST += \
lora_st.list \


# All Target
all: lora_st.elf secondary-outputs

# Tool invocations
lora_st.elf: $(OBJS) $(USER_OBJS) C:\Users\Propietario\Documents\GitHub\sx1272_stIDE\STM32F411VETX_FLASH.ld
	arm-none-eabi-gcc -o "lora_st.elf" @"objects.list" $(USER_OBJS) $(LIBS) -mcpu=cortex-m4 -T"C:\Users\Propietario\Documents\GitHub\sx1272_stIDE\STM32F411VETX_FLASH.ld" --specs=nosys.specs -Wl,-Map="lora_st.map" -Wl,--gc-sections -static --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -Wl,--start-group -lc -lm -Wl,--end-group
	@echo 'Finished building target: $@'
	@echo ' '

default.size.stdout: $(EXECUTABLES)
	arm-none-eabi-size  $(EXECUTABLES)
	@echo 'Finished building: $@'
	@echo ' '

lora_st.list: $(EXECUTABLES)
	arm-none-eabi-objdump -h -S $(EXECUTABLES) > "lora_st.list"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) *
	-@echo ' '

secondary-outputs: $(SIZE_OUTPUT) $(OBJDUMP_LIST)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
