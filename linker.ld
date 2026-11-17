OUTPUT_FORMAT(elf64-x86-64)
ENTRY(entry)

PHDR5
{
    text PT_LOAD FLAGS(0x5);
    rodata PT_LOAD FLAGS(0x4);
    data PT_LOAD FLAGS(0x6)
}

SECTIONS
{
    . = 0xffffffff80000000;

    .text :
    {
        *(.text .text.*)
    } :text

    /* Note to self: move to next memory page for rodata */
    . = ALIGN(CONSTANT(MAXPAGESIZE));

    .rodata :
    {
        *(.rodata .rodata.*)
    } :rodata
    
    . = ALIGN(CONSTANT(MAXPAGESIZE));
    
    .data :
    {
        *(.data .data.*)
    } :data

    .bss :
    {
        *(.bss .bss.*)
        *(COMMON)
    } :data
}
