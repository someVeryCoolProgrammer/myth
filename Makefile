ASM = nasm

SRC_DIR = src
BIN_DIR = bin

$(BIN_DIR)/main_floppy.img: $(BIN_DIR)/main.bin
	cp $(BIN_DIR)/main.bin $(BIN_DIR)/main_floppy.img
	truncate -s 1440k $(BIN_DIR)/main_floppy.img

$(BIN_DIR)/main.bin: $(SRC_DIR)/main.asm
	$(ASM) $(SRC_DIR)/main.asm -f bin -o $(BIN_DIR)/main.bin

