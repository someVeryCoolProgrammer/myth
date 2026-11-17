_Noreturn void entry(void)
{
    // Entry point for myth's kernel
    for (;;) {
        __asm__ volatile ("hlt");
    }
}
