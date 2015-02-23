# ringbus4xilinx
ring bus IP for xilinx fpga

##  写在前面
已经有很多非常好的总线，如PCI、AXI、AMBA，为什么要再造一个轮子


1. ring bus是一种很好的设计思路，从前看IBM的cell、Intel的众核CPU都提到采用了ring bus，但是没有开源的
2. 大部分总线都是主从的或者层次结构的，对于心中充满平等想法的人总觉得不爽
3. 希望有一个可以水平无限扩展的总线
4. 总线学习成本非常高，希望用IP的方法把它封装起来

## 设计思路
1. 不要太复杂
2. 类似PCI的读写模型，写总是主动的，读转化为写
3. 支持Tag使得操作可以异步进行
4. 通过双环结构提供可靠性
5. 为了简单采用定长数据包，包长等于环长

## 规划
### BUS
1. 最里层是一个环（ring），由一个controller和若干End point组成，由于环长度是固定的，等于最大End point数，所以没用的End point用简单的移位寄存器来吸收
2. controller负责维护整个环的同步
3. End point负责对外接口
4. shift reg产生合适的时延，使得整个环的时延正好等于一个Package的长度

### End Point
1. 对外提供入和出两个接口
2. 从总线输出数据称为接收，用rx表示
3. 进入总线称为发送，用tx表示
4. 每个接口上提供sop（start of package）的信号
5. tx接口上用req表示有package要发送

### 各种EP
1. EPMEMIN 将总线接收接口转化为MEM写接口
2. EPMEMOUT 将总线发送接口转化为MEM读接口

### DMA控制器
1. 为了实现任意长度的写，设计DMA控制器将很长的数据传输分为定长的包传输
2. 提供en信号避免DMA长期占用总线
3. 提供一个处理器接口来配置DMA

### 控制ring bus
一种特殊的ring bus，有点像低速总线，AXI-Lite，通过它读写配置信息和状态信息。定义主从模式，支持Tag，可以异步读，将大量读命令发出，等结果。
#### Master 
1. 提供一个处理器接口
2. 提供Tag管理

#### Slave
1. 提供传统总线接口，地址、数据、读写信号
2. 读信号超前数据数据输出1clk，便于锁存





 
