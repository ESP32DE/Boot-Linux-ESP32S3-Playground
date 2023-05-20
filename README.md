# Boot-Linux-ESP32S3-Playground
This is a playground for the [Boot Linux on ESP32-S3](http://wiki.osll.ru/doku.php/etc:users:jcmvbkbc:linux-xtensa:esp32s3) which was done by the Legend: [jcmvbkbc](https://github.com/jcmvbkbc) 

Example kernel and rootfs images built from the above [wiki sources](http://wiki.osll.ru/doku.php/etc:users:jcmvbkbc:linux-xtensa:esp32s3) as well as a [toolchain archive](http://wiki.osll.ru/doku.php/etc:users:jcmvbkbc:linux-xtensa:esp32s3)

used hardware in this case: ESP32-S3-N8R8 DevKitC-1 from [Espressif](http://espressif.eu) ( Octal-pSRAM ) 

<pre>Build:Mar 27 2021
rst:0x1 (POWERON),boot:0x8 (SPI_FAST_FLASH_BOOT)
SPIWP:0xee
mode:DIO, clock div:1
load:0x3fce3810,len:0x1098
load:0x403c9700,len:0xa24
load:0x403cc700,len:0x2d04
entry 0x403c988c
<font color="#26A269">I (73) octal_psram: vendor id    : 0x0d (AP)</font>
<font color="#26A269">I (74) octal_psram: dev id       : 0x02 (generation 3)</font>
<font color="#26A269">I (74) octal_psram: density      : 0x03 (64 Mbit)</font>
<font color="#26A269">I (78) octal_psram: good-die     : 0x01 (Pass)</font>
<font color="#26A269">I (83) octal_psram: Latency      : 0x01 (Fixed)</font>
<font color="#26A269">I (89) octal_psram: VCC          : 0x01 (3V)</font>
<font color="#26A269">I (94) octal_psram: SRF          : 0x01 (Fast Refresh)</font>
<font color="#26A269">I (99) octal_psram: BurstType    : 0x01 (Hybrid Wrap)</font>
<font color="#26A269">I (105) octal_psram: BurstLen     : 0x01 (32 Byte)</font>
<font color="#26A269">I (111) octal_psram: Readlatency  : 0x02 (10 cycles@Fixed)</font>
<font color="#26A269">I (117) octal_psram: DriveStrength: 0x00 (1/1)</font>
<font color="#26A269">I (123) esp_psram: Found 8MB PSRAM device</font>
<font color="#26A269">I (127) esp_psram: Speed: 80MHz</font>
<font color="#26A269">I (130) cpu_start: Pro cpu up.</font>
<font color="#26A269">I (134) cpu_start: Starting app cpu, entry point is 0h40375298 greeting to the stuff :)</font>
<font color="#26A269">I (143) cpu_start: DEBUG_we are on first way here start cpu1</font>
<font color="#26A269">I (149) cpu_start: DEBUG_we are marked as 1 on way to start cpu1</font>
<font color="#26A269">I (156) cpu_start: DEBUG_before_call start cpu1</font>
<font color="#26A269">I (161) cpu_start: DEBUG_after_call start cpu1</font>
<font color="#26A269">I (166) esp32s3-linux: eMbeddedHome-liosti-cpu1: 0h40375298</font>
<font color="#26A269">I (0) cpu_start: App cpu up.</font>
<font color="#26A269">I (625) esp_psram: SPI SRAM memory test OK</font>
<font color="#26A269">I (634) cpu_start: Pro cpu start user code</font>
<font color="#26A269">I (634) cpu_start: cpu freq: 160000000 Hz</font>
<font color="#26A269">I (634) cpu_start: Application information:</font>
<font color="#26A269">I (637) cpu_start: Project name:     linux_boot</font>
<font color="#26A269">I (642) cpu_start: App version:      v5.0.1-3-g8a29e7a6e1-dirty</font>
<font color="#26A269">I (649) cpu_start: Compile time:     May 16 2023 21:37:43</font>
<font color="#26A269">I (655) cpu_start: ELF file SHA256:  4fe4a4b6aaa3fc1b...</font>
<font color="#26A269">I (661) cpu_start: ESP-IDF:          v5.0.1-3-g8a29e7a6e1-dirty</font>
<font color="#26A269">I (668) cpu_start: Min chip rev:     v0.0</font>
<font color="#26A269">I (672) cpu_start: Max chip rev:     v0.99 </font>
<font color="#26A269">I (677) cpu_start: Chip rev:         v0.0</font>
<font color="#26A269">I (682) heap_init: Initializing. RAM available for dynamic allocation:</font>
<font color="#26A269">I (689) heap_init: At 3FC958A8 len 00053E68 (335 KiB): D/IRAM</font>
<font color="#26A269">I (696) heap_init: At 3FCE9710 len 00005724 (21 KiB): STACK/DRAM</font>
<font color="#26A269">I (702) heap_init: At 3FCF0000 len 00008000 (32 KiB): DRAM</font>
<font color="#26A269">I (708) heap_init: At 600FE010 len 00001FF0 (7 KiB): RTCRAM</font>
<font color="#26A269">I (715) esp_psram: Adding pool of 8192K of PSRAM memory to heap allocator</font>
<font color="#26A269">I (723) spi_flash: detected chip: generic</font>
<font color="#26A269">I (727) spi_flash: flash io: dio</font>
<font color="#26A269">I (732) cpu_start: Starting scheduler on PRO CPU.</font>
<font color="#26A269">I (0) cpu_start: Starting scheduler on APP CPU.</font>
<font color="#26A269">I (752) esp_psram: Reserving pool of 32K of internal memory for DMA/internal allocations</font>
ptr = 0x42830000
ptr = 0x42b30000
[    0.000000] Ignoring boot parameters at (ptrval)
[    0.000000] Linux version 6.3.0-00023-g0ac241590a6e (jcmvbkbc@octofox) (xtensa-generic-elf-gcc (GCC) 13.1.0, GNU ld (GNU Binutils) 2.40) #48 PREEMPT Tue May 16 7:54:35 PDT 2023
[    0.000000] config ID: c2f0fffe:23090f1f
[    0.000000] earlycon: esp32uart0 at MMIO32 0x60000000 (options &apos;115200n8&apos;)
[    0.000000] printk: bootconsole [esp32uart0] enabled
[    0.000000] **********************************************************
[    0.000000] **   NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE   **
[    0.000000] **                                                      **
[    0.000000] ** This system shows unhashed kernel memory addresses   **
[    0.000000] ** via the console, logs, and other interfaces. This    **
[    0.000000] ** might reduce the security of your system.            **
[    0.000000] **                                                      **
[    0.000000] ** If you see this message and you are not debugging    **
[    0.000000] ** the kernel, report this immediately to your system   **
[    0.000000] ** administrator!                                       **
[    0.000000] **                                                      **
[    0.000000] **   NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE NOTICE   **
[    0.000000] **********************************************************
[    0.000000] Zone ranges:
[    0.000000]   Normal   [mem 0x000000003c030000-0x000000003c82ffff]
[    0.000000] Movable zone start for each node
[    0.000000] Early memory node ranges
[    0.000000]   node   0: [mem 0x000000003c030000-0x000000003c82ffff]
[    0.000000] Initmem setup node 0 [mem 0x000000003c030000-0x000000003c82ffff]
[    0.000000] pcpu-alloc: s0 r0 d32768 u32768 alloc=1*32768
[    0.000000] pcpu-alloc: [0] 0 
[    0.000000] Built 1 zonelists, mobility grouping off.  Total pages: 2032
[    0.000000] Kernel command line: earlycon=esp32uart,mmio32,0x60000000,115200n8 console=ttyS0,115200n8 debug rw root=mtd:data no_hash_pointers 
[    0.000000] Dentry cache hash table entries: 1024 (order: 0, 4096 bytes, linear)
[    0.000000] Inode-cache hash table entries: 1024 (order: 0, 4096 bytes, linear)
[    0.000000] mem auto-init: stack:off, heap alloc:off, heap free:off
[    0.000000] virtual kernel memory layout:
[    0.000000]     lowmem  : 0x3c030000 - 0x3c830000  (    8 MB)
[    0.000000]     .text   : 0x42830000 - 0x42a0c044  ( 1904 kB)
[    0.000000]     .rodata : 0x42a0d000 - 0x42a4b000  (  248 kB)
[    0.000000]     .data   : 0x3c030000 - 0x3c0aa540  (  489 kB)
[    0.000000]     .init   : 0x3c0aa540 - 0x3c0af080  (   18 kB)
[    0.000000]     .bss    : 0x3c0af080 - 0x3c0e4800  (  213 kB)
[    0.000000] Memory: 7320K/8192K available (1904K kernel code, 489K rwdata, 248K rodata, 94K init, 213K bss, 872K reserved, 0K cma-reserved)
[    0.000000] SLUB: HWalign=16, Order=0-3, MinObjects=0, CPUs=1, Nodes=1
[    0.000000] rcu: Preemptible hierarchical RCU implementation.
[    0.000000] rcu: RCU calculated value of scheduler-enlistment delay is 10 jiffies.
[    0.000000] NR_IRQS: 33
[    0.000000] rcu: srcu_init: Setting srcu_struct sizes based on contention.
[    0.000000] clocksource: ccount: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 11945377789 ns
[    0.000088] sched_clock: 32 bits at 160MHz, resolution 6ns, wraps every 13421772796ns
[    0.008148] Calibrating delay loop (skipped)... 160.00 BogoMIPS preset
[    0.014339] pid_max: default: 4096 minimum: 301
[    0.021267] Mount-cache hash table entries: 1024 (order: 0, 4096 bytes, linear)
[    0.026506] Mountpoint-cache hash table entries: 1024 (order: 0, 4096 bytes, linear)
[    0.075270] rcu: Hierarchical SRCU implementation.
[    0.075912] rcu: 	Max phase no-delay instances is 1000.
[    0.088745] devtmpfs: initialized
[    0.113563] clocksource: jiffies: mask: 0xffffffff max_cycles: 0xffffffff, max_idle_ns: 19112604462750000 ns
[    0.114812] futex hash table entries: 16 (order: -5, 192 bytes, linear)
[    0.134485] NET: Registered PF_NETLINK/PF_ROUTE protocol family
[    0.149657] platform soc: Fixed dependency cycle(s) with /soc/intc@600c2000
[    0.211951] clocksource: Switched to clocksource ccount
[    0.259552] NET: Registered PF_INET protocol family
[    0.267673] IP idents hash table entries: 2048 (order: 2, 16384 bytes, linear)
[    0.288195] tcp_listen_portaddr_hash hash table entries: 1024 (order: 0, 4096 bytes, linear)
[    0.289368] Table-perturb hash table entries: 65536 (order: 6, 262144 bytes, linear)
[    0.297062] TCP established hash table entries: 1024 (order: 0, 4096 bytes, linear)
[    0.303063] TCP bind hash table entries: 1024 (order: 1, 8192 bytes, linear)
[    0.308938] TCP: Hash tables configured (established 1024 bind 1024)
[    0.319268] UDP hash table entries: 256 (order: 0, 4096 bytes, linear)
[    0.323134] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes, linear)
[    0.349941] workingset: timestamp_bits=30 max_order=11 bucket_order=0
[    2.624891] 60000000.serial: ttyS0 at MMIO 0x60000000 (irq = 1, base_baud = 0) is a ESP32 UART
[    2.626783] printk: console [ttyS0] enabled
[    2.626783] printk: console [ttyS0] enabled
[    2.631380] printk: bootconsole [esp32uart0] disabled
[    2.631380] printk: bootconsole [esp32uart0] disabled
[    2.670188] physmap-flash 42830000.flash: physmap platform flash device: [mem 0x42830000-0x4302ffff]
[    2.672973] 2 fixed-partitions partitions found on MTD device 42830000.flash
[    2.676015] Creating 2 MTD partitions on &quot;42830000.flash&quot;:
[    2.681614] 0x000000000000-0x000000300000 : &quot;linux&quot;
[    2.697240] 0x000000300000-0x000000880000 : &quot;data&quot;
[    2.698011] mtd: partition &quot;data&quot; extends beyond the end of device &quot;42830000.flash&quot; -- size truncated to 0x500000
[    2.724379] NET: Registered PF_INET6 protocol family
[    2.760411] Segment Routing with IPv6
[    2.765436] In-situ OAM (IOAM) with IPv6
[    2.767987] sit: IPv6, IPv4 and MPLS over IPv4 tunneling driver
[    3.019707] cramfs: checking physical address 0x42b30000 for linear cramfs image
[    3.020575] cramfs: linear cramfs image on mtd:data appears to be 1764 KB in size
[    3.028006] VFS: Mounted root (cramfs filesystem) readonly on device 31:1.
[    3.034942] devtmpfs: mounted
[    3.037483] Freeing unused kernel image (initmem) memory: 16K
[    3.039701] This architecture does not have kernel memory protection.
[    3.047779] Run /sbin/init as init process
[    3.050206]   with arguments:
[    3.054162]     /sbin/init
[    3.055818]   with environment:
[    3.058926]     HOME=/
[    3.061265]     TERM=linux
[    5.723690] random: crng init done
Starting syslogd: OK
Starting klogd: OK
Running sysctl: OK
seedrng: can&apos;t create directory &apos;/var/lib/seedrng&apos;: Read-only file system
Starting network: Ok

Welcome to Buildroot for ESP32-S3 by rudi ;-) (twitter.com/eMbeddedHome)
buildroot login: 
</pre>


**To do: more things in the rootfs :)



![1](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/5d7484bb-652a-4c53-ac6e-52507158d8f0)

![2](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/a0527e15-11d1-44ff-8987-2b2dd7a29af8)

![3](https://github.com/ESP32DE/Boot-Linux-ESP32S3-Playground/assets/16070445/904cf8db-7ec6-4734-b392-130fbedf66ab)











